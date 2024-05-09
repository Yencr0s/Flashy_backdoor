from torchvision.datasets import DatasetFolder
from typing import Callable, Dict, Optional, Tuple
from abc import abstractmethod
import scipy.io
import struct
import numpy as np
from torchvision.datasets import utils
import torch.utils.data
import os
from concurrent.futures import ThreadPoolExecutor
import time
from torchvision import transforms
import torch
from matplotlib import pyplot as plt
import math
import tqdm
import shutil
import logging
from typing import Callable, Dict, Optional, Tuple
import numpy as np
from torchvision.datasets.utils import extract_archive
import os
import multiprocessing
from concurrent.futures import ThreadPoolExecutor
import time
import spikingjelly.datasets as datasets
import spikingjelly.datasets.dvs128_gesture as dvs128_gesture


def integrate_events_file_to_frames_file_by_fixed_frames_number(loader: Callable, events_np_file: str, output_dir: str, split_by: str, frames_num: int, H: int, W: int, print_save: bool = False) -> None:
    '''
    :param loader: a function that can load events from `events_np_file`
    :type loader: Callable
    :param events_np_file: path of the events np file
    :type events_np_file: str
    :param output_dir: output directory for saving the frames
    :type output_dir: str
    :param split_by: 'time' or 'number'
    :type split_by: str
    :param frames_num: the number of frames
    :type frames_num: int
    :param H: the height of frame
    :type H: int
    :param W: the weight of frame
    :type W: int
    :param print_save: If ``True``, this function will print saved files' paths.
    :type print_save: bool
    :return: None
    Integrate a events file to frames by fixed frames number and save it. See :class:`cal_fixed_frames_number_segment_index` and :class:`integrate_events_segment_to_frame` for more details.
    '''
    fname = os.path.join(output_dir, os.path.basename(events_np_file))

    np.savez(fname, frames=integrate_events_by_fixed_frames_number(loader(events_np_file), split_by, frames_num, H, W))
    if print_save:
        print(f'Frames [{fname}] saved.')

def integrate_events_by_fixed_frames_number(events: Dict, split_by: str, frames_num: int, H: int, W: int) -> np.ndarray:
    '''
    :param events: a dict whose keys are ``['t', 'x', 'y', 'p']`` and values are ``numpy.ndarray``
    :type events: Dict
    :param split_by: 'time' or 'number'
    :type split_by: str
    :param frames_num: the number of frames
    :type frames_num: int
    :param H: the height of frame
    :type H: int
    :param W: the weight of frame
    :type W: int
    :return: frames
    :rtype: np.ndarray
    Integrate events to frames by fixed frames number. See :class:`cal_fixed_frames_number_segment_index` and :class:`integrate_events_segment_to_frame` for more details.
    '''
    t, x, y, p = (events[key] for key in ('t', 'x', 'y', 'p'))
    # print('asdfasdfasdfasdfasdfasdfasdfasdf')
    j_l, j_r = cal_fixed_frames_number_segment_index(t, split_by, frames_num)
    frames = np.zeros([frames_num, 2, H, W])
    #print(frames_num)
    for i in range(frames_num):
        #print(x, y, p, H, W, j_l[i], j_r[i])
        frames[i] = integrate_events_segment_to_frame(x, y, p, H, W, j_l[i], j_r[i])
    return frames


def integrate_events_segment_to_frame(x: np.ndarray, y: np.ndarray, p: np.ndarray, H: int, W: int, j_l: int = 0, j_r: int = -1) -> np.ndarray:
    '''
    :param x: x-coordinate of events
    :type x: numpy.ndarray
    :param y: y-coordinate of events
    :type y: numpy.ndarray
    :param p: polarity of events
    :type p: numpy.ndarray
    :param H: height of the frame
    :type H: int
    :param W: weight of the frame
    :type W: int
    :param j_l: the start index of the integral interval, which is included
    :type j_l: int
    :param j_r: the right index of the integral interval, which is not included
    :type j_r:
    :return: frames
    :rtype: np.ndarray
    Denote a two channels frame as :math:`F` and a pixel at :math:`(p, x, y)` as :math:`F(p, x, y)`, the pixel value is integrated from the events data whose indices are in :math:`[j_{l}, j_{r})`:

    .. math::

        F(p, x, y) = \sum_{i = j_{l}}^{j_{r} - 1} \mathcal{I}_{p, x, y}(p_{i}, x_{i}, y_{i})

    where :math:`\\lfloor \\cdot \\rfloor` is the floor operation, :math:`\mathcal{I}_{p, x, y}(p_{i}, x_{i}, y_{i})` is an indicator function and it equals 1 only when :math:`(p, x, y) = (p_{i}, x_{i}, y_{i})`.
    '''
    # 累计脉冲需要用bitcount而不能直接相加，原因可参考下面的示例代码，以及
    # https://stackoverflow.com/questions/15973827/handling-of-duplicate-indices-in-numpy-assignments
    # We must use ``bincount`` rather than simply ``+``. See the following reference:
    # https://stackoverflow.com/questions/15973827/handling-of-duplicate-indices-in-numpy-assignments

    # Here is an example:

    # height = 3
    # width = 3
    # frames = np.zeros(shape=[2, height, width])
    # events = {
    #     'x': np.asarray([1, 2, 1, 1]),
    #     'y': np.asarray([1, 1, 1, 2]),
    #     'p': np.asarray([0, 1, 0, 1])
    # }
    #
    # frames[0, events['y'], events['x']] += (1 - events['p'])
    # frames[1, events['y'], events['x']] += events['p']
    # print('wrong accumulation\n', frames)
    #
    # frames = np.zeros(shape=[2, height, width])
    # for i in range(events['p'].__len__()):
    #     frames[events['p'][i], events['y'][i], events['x'][i]] += 1
    # print('correct accumulation\n', frames)
    #
    # frames = np.zeros(shape=[2, height, width])
    # frames = frames.reshape(2, -1)
    #
    # mask = [events['p'] == 0]
    # mask.append(np.logical_not(mask[0]))
    # for i in range(2):
    #     position = events['y'][mask[i]] * width + events['x'][mask[i]]
    #     events_number_per_pos = np.bincount(position)
    #     idx = np.arange(events_number_per_pos.size)
    #     frames[i][idx] += events_number_per_pos
    # frames = frames.reshape(2, height, width)
    # print('correct accumulation by bincount\n', frames)

    frame = np.zeros(shape=[2, H * W])
    x = x[j_l: j_r].astype(int)  # avoid overflow
    y = y[j_l: j_r].astype(int)
    p = p[j_l: j_r]
    mask = []
    mask.append(p == 0)
    mask.append(np.logical_not(mask[0]))
    for c in range(2):
        position = y[mask[c]] * W + x[mask[c]]
        events_number_per_pos = np.bincount(position)
        a = frame[c][np.arange(events_number_per_pos.size)]
        frame[c][np.arange(events_number_per_pos.size)] += events_number_per_pos
    
    return frame.reshape((2, H, W))


def cal_fixed_frames_number_segment_index(events_t: np.ndarray, split_by: str, frames_num: int) -> tuple:
    '''
    :param events_t: events' t
    :type events_t: numpy.ndarray
    :param split_by: 'time' or 'number'
    :type split_by: str
    :param frames_num: the number of frames
    :type frames_num: int
    :return: a tuple ``(j_l, j_r)``
    :rtype: tuple
    Denote ``frames_num`` as :math:`M`, if ``split_by`` is ``'time'``, then

    .. math::

        \\Delta T & = [\\frac{t_{N-1} - t_{0}}{M}] \\\\
        j_{l} & = \\mathop{\\arg\\min}\\limits_{k} \\{t_{k} | t_{k} \\geq t_{0} + \\Delta T \\cdot j\\} \\\\
        j_{r} & = \\begin{cases} \\mathop{\\arg\\max}\\limits_{k} \\{t_{k} | t_{k} < t_{0} + \\Delta T \\cdot (j + 1)\\} + 1, & j <  M - 1 \\cr N, & j = M - 1 \\end{cases}

    If ``split_by`` is ``'number'``, then

    .. math::

        j_{l} & = [\\frac{N}{M}] \\cdot j \\\\
        j_{r} & = \\begin{cases} [\\frac{N}{M}] \\cdot (j + 1), & j <  M - 1 \\cr N, & j = M - 1 \\end{cases}
    '''
    j_l = np.zeros(shape=[frames_num], dtype=int)
    j_r = np.zeros(shape=[frames_num], dtype=int)
    N = events_t.size

    if split_by == 'number':
        di = N // frames_num
        for i in range(frames_num):
            j_l[i] = i * di
            j_r[i] = j_l[i] + di
        j_r[-1] = N

    elif split_by == 'time':

        dt = (events_t[-1] - events_t[0]) // frames_num
        print(dt)
        idx = np.arange(N)
        print(events_t)
        for i in range(frames_num):
            print(i)
            t_l = dt * i + events_t[0]
            t_r = t_l + dt
            print(t_l,t_r)
            mask = np.logical_and(events_t >= t_l, events_t < t_r)
            if not np.any(mask):
                j_l[i] = j_r[i] = 0
                continue
            idx_masked = idx[mask]
            j_l[i] = idx_masked[0]

            j_r[i] = idx_masked[-1] + 1
            print('00000000000000000000000')
        j_r[-1] = N
    else:
        raise NotImplementedError

    return j_l, j_r

def create_same_directory_structure(source_dir: str, target_dir: str) -> None:
    '''
    :param source_dir: Path of the directory that be copied from
    :type source_dir: str
    :param target_dir: Path of the directory that be copied to
    :type target_dir: str
    :return: None
    Create the same directory structure in ``target_dir`` with that of ``source_dir``.
    '''
    for sub_dir_name in os.listdir(source_dir):
        source_sub_dir = os.path.join(source_dir, sub_dir_name)
        if os.path.isdir(source_sub_dir):
            target_sub_dir = os.path.join(target_dir, sub_dir_name)
            os.mkdir(target_sub_dir)
            print(f'Mkdir [{target_sub_dir}].')
            create_same_directory_structure(source_sub_dir, target_sub_dir)

def load_events_np(fname: str):
    '''
    :param fname: file name
    :return: a dict whose keys are ``['t', 'x', 'y', 'p']`` and values are ``numpy.ndarray``
    This function defines how to load a sample from `events_np`. In most cases, this function is `np.load`.
    But for some datasets, e.g., ES-ImageNet, it can be different.
    '''

    # data = np.load(fname)
    # data = data['events']
    # data_dict = {'t': data[:, 0], 'x': data[:, 1], 'y': data[:, 2], 'p': data[:, 3]}
    # print("Loaded keys:", data_dict.keys())
    # print("Loaded data:", data_dict)
    # return data_dict

    data = np.load(fname)
    # print('ehhhhhhhhhh', data['x'].max(),data['x'].min(), data['y'].max(),data['y'].min(),)
    return data

    

H, W = 128, 128
frames_number = 16
split_by = 'time'
events_np_root = './data/datos/events_np'
frames_np_root = './data/datos/frames_number_16_split_by_number'
root =  './data/datos'


if frames_number is not None:
    assert frames_number > 0 and isinstance(frames_number, int)
    assert split_by == 'time' or split_by == 'number'
    frames_np_root = os.path.join(root, f'frames_number_{frames_number}_split_by_{split_by}')
    if os.path.exists(frames_np_root):
        print(f'The directory [{frames_np_root}] already exists.')
    else:
        os.mkdir(frames_np_root)
        print(f'Mkdir [{frames_np_root}].')

        # create the same directory structure
        create_same_directory_structure(events_np_root, frames_np_root)

        # use multi-thread to accelerate
        t_ckp = time.time()
        with ThreadPoolExecutor(max_workers=2) as tpe:
            sub_threads = []
            print(f'Start ThreadPoolExecutor with max workers = [{tpe._max_workers}].')
            for e_root, e_dirs, e_files in os.walk(events_np_root):
                if e_files.__len__() > 0:
                    output_dir = os.path.join(frames_np_root, os.path.relpath(e_root, events_np_root))
                    for e_file in e_files:
                        events_np_file = os.path.join(e_root, e_file)
                        print(f'Start to integrate [{events_np_file}] to frames and save to [{output_dir}].')
                        sub_threads.append(tpe.submit(integrate_events_file_to_frames_file_by_fixed_frames_number, load_events_np, events_np_file, output_dir, split_by, frames_number, H, W, True))
            for sub_thread in sub_threads:
                if sub_thread.exception():
                    #print('ahhhhhhhhhhhhh')
                    print(sub_thread.exception())
                    exit(-1)




        print(f'Used time = [{round(time.time() - t_ckp, 2)}s].')







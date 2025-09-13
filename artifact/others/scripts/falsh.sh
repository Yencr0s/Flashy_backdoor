#ANCHOR Normal flash

# N-MNIST
python main.py --dataset mnist --polarity 1 --epsilon 0.1 --type flash --cupy --epochs 10

# CIFAR-10
python main.py --dataset cifar10 --polarity 1 --epsilon 0.1 --type flash --cupy --epochs 28

# Gesture
python main.py --dataset gesture --polarity 1 --epsilon 0.1 --type flash --cupy --epochs 64

# Caltech-101
python main.py --dataset caltech --polarity 1 --epsilon 0.1 --type flash --cupy --epochs 30




#Flash at the start
python main.py --dataset gesture --polarity 1 --epsilon 0.1 --type flash --cupy --epochs 64 --start 0 --end 1 --strobe_gap 0 --strobe_on_duration 0 --trigger_length 1

#Flash at the end
python main.py --dataset gesture --polarity 1 --epsilon 0.1 --type flash --cupy --epochs 64 --start 14 --end 15 --strobe_gap 0 --strobe_on_duration 0 --trigger_length 1

#Random flash
python main.py --dataset gesture --polarity 1 --epsilon 0.1 --type flash --cupy --epochs 64 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 0 --trigger_length 1

#Full strobe
python main.py --dataset gesture --polarity 1 --epsilon 0.1 --type flash --cupy --epochs 64 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 16

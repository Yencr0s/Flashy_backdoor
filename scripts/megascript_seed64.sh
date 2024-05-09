##Trigger size 10%
# Trigger length
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p1/continuous/static_trigger/results_static_start_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p1/continuous/static_trigger/results_static_end_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p1/continuous/static_trigger/results_static_mid_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8

cp experiments/results3.csv results/seed64/cifar10/p1/continuous/static_trigger/results_static_start_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p1/continuous/static_trigger/results_static_end_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p1/continuous/static_trigger/results_static_mid_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# # Trigger length
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p1/continuous/static_trigger/results_static_start_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p1/continuous/static_trigger/results_static_end_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p1/continuous/static_trigger/results_static_mid_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

###Strobe
##Trigger size 10%
# Trigger length
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p1/strobe/static_trigger/results_static_start_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p1/strobe/static_trigger/results_static_end_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p1/strobe/static_trigger/results_static_mid_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p1/strobe/static_trigger/results_static_start_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p1/strobe/static_trigger/results_static_end_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p1/strobe/static_trigger/results_static_mid_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# Trigger length
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p1/strobe/static_trigger/results_static_start_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p1/strobe/static_trigger/results_static_end_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p1/strobe/static_trigger/results_static_mid_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Flash

# # Trigger length
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p1/continuous/flash/results_flash_start.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p1/continuous/flash/results_flash_end.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p1/continuous/flash/results_flash_mid.csv
sed -i '2,$d' experiments/results3.csv 



###Repetir Flash strobe

# # Trigger length
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/cifar10/p1/strobe/flash/results_flash_start_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p1/strobe/flash/results_flash_end_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
# python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
# python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/cifar10/p1/strobe/flash/results_flash_mid_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 



#################### Gesture polarity 1 #################################

##Trigger size 10%
# Trigger length
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p1/continuous/static_trigger/results_static_start_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p1/continuous/static_trigger/results_static_end_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p1/continuous/static_trigger/results_static_mid_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8

cp experiments/results3.csv results/seed64/gesture/p1/continuous/static_trigger/results_static_start_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p1/continuous/static_trigger/results_static_end_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p1/continuous/static_trigger/results_static_mid_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# # Trigger length
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p1/continuous/static_trigger/results_static_start_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p1/continuous/static_trigger/results_static_end_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p1/continuous/static_trigger/results_static_mid_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

###Strobe
##Trigger size 10%
# Trigger length
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p1/strobe/static_trigger/results_static_start_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p1/strobe/static_trigger/results_static_end_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p1/strobe/static_trigger/results_static_mid_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p1/strobe/static_trigger/results_static_start_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p1/strobe/static_trigger/results_static_end_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p1/strobe/static_trigger/results_static_mid_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# Trigger length
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p1/strobe/static_trigger/results_static_start_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p1/strobe/static_trigger/results_static_end_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p1/strobe/static_trigger/results_static_mid_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Flash

# # Trigger length
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p1/continuous/flash/results_flash_start.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p1/continuous/flash/results_flash_end.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p1/continuous/flash/results_flash_mid.csv
sed -i '2,$d' experiments/results3.csv 


###Flash strobe

# # Trigger length
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/gesture/p1/strobe/flash/results_flash_start_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p1/strobe/flash/results_flash_end_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/gesture/p1/strobe/flash/results_flash_mid_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 











#################### mNIST polarity 1 #################################


##Trigger size 10%
# Trigger length
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p1/continuous/static_trigger/results_static_start_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p1/continuous/static_trigger/results_static_end_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p1/continuous/static_trigger/results_static_mid_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8

cp experiments/results3.csv results/seed64/mnist/p1/continuous/static_trigger/results_static_start_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p1/continuous/static_trigger/results_static_end_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p1/continuous/static_trigger/results_static_mid_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# # Trigger length
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p1/continuous/static_trigger/results_static_start_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p1/continuous/static_trigger/results_static_end_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p1/continuous/static_trigger/results_static_mid_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

###Strobe
##Trigger size 10%
# Trigger length
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p1/strobe/static_trigger/results_static_start_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p1/strobe/static_trigger/results_static_end_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p1/strobe/static_trigger/results_static_mid_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p1/strobe/static_trigger/results_static_start_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p1/strobe/static_trigger/results_static_end_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p1/strobe/static_trigger/results_static_mid_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# Trigger length
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p1/strobe/static_trigger/results_static_start_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p1/strobe/static_trigger/results_static_end_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 1 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p1/strobe/static_trigger/results_static_mid_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Flash

# # Trigger length
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p1/continuous/flash/results_flash_start.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p1/continuous/flash/results_flash_end.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p1/continuous/flash/results_flash_mid.csv
sed -i '2,$d' experiments/results3.csv 


###Flash strobe

# # Trigger length
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/mnist/p1/strobe/flash/results_flash_start_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p1/strobe/flash/results_flash_end_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 1 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/mnist/p1/strobe/flash/results_flash_mid_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 





#################################################
#################################################
###########   ALL GESTURE POLARITIES   ##########
#################################################
#################################################


#####Gesture polarity 0

##Trigger size 10%
# Trigger length
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p0/continuous/static_trigger/results_static_start_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p0/continuous/static_trigger/results_static_end_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p0/continuous/static_trigger/results_static_mid_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8

cp experiments/results3.csv results/seed64/gesture/p0/continuous/static_trigger/results_static_start_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p0/continuous/static_trigger/results_static_end_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p0/continuous/static_trigger/results_static_mid_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# # Trigger length
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p0/continuous/static_trigger/results_static_start_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p0/continuous/static_trigger/results_static_end_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p0/continuous/static_trigger/results_static_mid_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

###Strobe
##Trigger size 10%
# Trigger length
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p0/strobe/static_trigger/results_static_start_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p0/strobe/static_trigger/results_static_end_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p0/strobe/static_trigger/results_static_mid_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p0/strobe/static_trigger/results_static_start_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p0/strobe/static_trigger/results_static_end_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p0/strobe/static_trigger/results_static_mid_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# Trigger length
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p0/strobe/static_trigger/results_static_start_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p0/strobe/static_trigger/results_static_end_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p0/strobe/static_trigger/results_static_mid_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Flash

# # Trigger length
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p0/continuous/flash/results_flash_start.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p0/continuous/flash/results_flash_end.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p0/continuous/flash/results_flash_mid.csv
sed -i '2,$d' experiments/results3.csv 


###Flash strobe

# # Trigger length
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/gesture/p0/strobe/flash/results_flash_start_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p0/strobe/flash/results_flash_end_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/gesture/p0/strobe/flash/results_flash_mid_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 





#####Gesture polarity 2

##Trigger size 10%
# Trigger length
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p2/continuous/static_trigger/results_static_start_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p2/continuous/static_trigger/results_static_end_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p2/continuous/static_trigger/results_static_mid_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8

cp experiments/results3.csv results/seed64/gesture/p2/continuous/static_trigger/results_static_start_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p2/continuous/static_trigger/results_static_end_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p2/continuous/static_trigger/results_static_mid_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# # Trigger length
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p2/continuous/static_trigger/results_static_start_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p2/continuous/static_trigger/results_static_end_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p2/continuous/static_trigger/results_static_mid_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

###Strobe
##Trigger size 10%
# Trigger length
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p2/strobe/static_trigger/results_static_start_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p2/strobe/static_trigger/results_static_end_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p2/strobe/static_trigger/results_static_mid_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p2/strobe/static_trigger/results_static_start_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p2/strobe/static_trigger/results_static_end_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p2/strobe/static_trigger/results_static_mid_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# Trigger length
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p2/strobe/static_trigger/results_static_start_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p2/strobe/static_trigger/results_static_end_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p2/strobe/static_trigger/results_static_mid_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Flash

# # Trigger length
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p2/continuous/flash/results_flash_start.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p2/continuous/flash/results_flash_end.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p2/continuous/flash/results_flash_mid.csv
sed -i '2,$d' experiments/results3.csv 


###Flash strobe

# # Trigger length
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/gesture/p2/strobe/flash/results_flash_start_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p2/strobe/flash/results_flash_end_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/gesture/p2/strobe/flash/results_flash_mid_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 





#####Gesture polarity 3

##Trigger size 10%
# Trigger length
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p3/continuous/static_trigger/results_static_start_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p3/continuous/static_trigger/results_static_end_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p3/continuous/static_trigger/results_static_mid_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8

cp experiments/results3.csv results/seed64/gesture/p3/continuous/static_trigger/results_static_start_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p3/continuous/static_trigger/results_static_end_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p3/continuous/static_trigger/results_static_mid_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# # Trigger length
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p3/continuous/static_trigger/results_static_start_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p3/continuous/static_trigger/results_static_end_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p3/continuous/static_trigger/results_static_mid_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

###Strobe
##Trigger size 10%
# Trigger length
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p3/strobe/static_trigger/results_static_start_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p3/strobe/static_trigger/results_static_end_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p3/strobe/static_trigger/results_static_mid_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p3/strobe/static_trigger/results_static_start_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p3/strobe/static_trigger/results_static_end_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p3/strobe/static_trigger/results_static_mid_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# Trigger length
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p3/strobe/static_trigger/results_static_start_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p3/strobe/static_trigger/results_static_end_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p3/strobe/static_trigger/results_static_mid_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Flash

# # Trigger length
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p3/continuous/flash/results_flash_start.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p3/continuous/flash/results_flash_end.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/gesture/p3/continuous/flash/results_flash_mid.csv
sed -i '2,$d' experiments/results3.csv 


###Flash strobe

# # Trigger length
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/gesture/p3/strobe/flash/results_flash_start_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/gesture/p3/strobe/flash/results_flash_end_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset gesture --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 40 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/gesture/p3/strobe/flash/results_flash_mid_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 










#################################################
#################################################
###########   ALL cifar10 POLARITIES   ##########
#################################################
#################################################


#####cifar10 polarity 0

##Trigger size 10%
# Trigger length
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p0/continuous/static_trigger/results_static_start_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p0/continuous/static_trigger/results_static_end_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p0/continuous/static_trigger/results_static_mid_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8

cp experiments/results3.csv results/seed64/cifar10/p0/continuous/static_trigger/results_static_start_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p0/continuous/static_trigger/results_static_end_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p0/continuous/static_trigger/results_static_mid_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# # Trigger length
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p0/continuous/static_trigger/results_static_start_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p0/continuous/static_trigger/results_static_end_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p0/continuous/static_trigger/results_static_mid_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

###Strobe
##Trigger size 10%
# Trigger length
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p0/strobe/static_trigger/results_static_start_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p0/strobe/static_trigger/results_static_end_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p0/strobe/static_trigger/results_static_mid_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p0/strobe/static_trigger/results_static_start_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p0/strobe/static_trigger/results_static_end_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p0/strobe/static_trigger/results_static_mid_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# Trigger length
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p0/strobe/static_trigger/results_static_start_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p0/strobe/static_trigger/results_static_end_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p0/strobe/static_trigger/results_static_mid_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Flash

# # Trigger length
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p0/continuous/flash/results_flash_start.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p0/continuous/flash/results_flash_end.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p0/continuous/flash/results_flash_mid.csv
sed -i '2,$d' experiments/results3.csv 


###Flash strobe

# # Trigger length
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/cifar10/p0/strobe/flash/results_flash_start_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p0/strobe/flash/results_flash_end_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/cifar10/p0/strobe/flash/results_flash_mid_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 




#####cifar10 polarity 2

##Trigger size 10%
# Trigger length
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p2/continuous/static_trigger/results_static_start_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p2/continuous/static_trigger/results_static_end_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p2/continuous/static_trigger/results_static_mid_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8

cp experiments/results3.csv results/seed64/cifar10/p2/continuous/static_trigger/results_static_start_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p2/continuous/static_trigger/results_static_end_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p2/continuous/static_trigger/results_static_mid_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# # Trigger length
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p2/continuous/static_trigger/results_static_start_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p2/continuous/static_trigger/results_static_end_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p2/continuous/static_trigger/results_static_mid_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

###Strobe
##Trigger size 10%
# Trigger length
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p2/strobe/static_trigger/results_static_start_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p2/strobe/static_trigger/results_static_end_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p2/strobe/static_trigger/results_static_mid_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p2/strobe/static_trigger/results_static_start_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p2/strobe/static_trigger/results_static_end_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p2/strobe/static_trigger/results_static_mid_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# Trigger length
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p2/strobe/static_trigger/results_static_start_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p2/strobe/static_trigger/results_static_end_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p2/strobe/static_trigger/results_static_mid_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Flash

# # Trigger length
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p2/continuous/flash/results_flash_start.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p2/continuous/flash/results_flash_end.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p2/continuous/flash/results_flash_mid.csv
sed -i '2,$d' experiments/results3.csv 


###Flash strobe

# # Trigger length
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/cifar10/p2/strobe/flash/results_flash_start_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p2/strobe/flash/results_flash_end_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/cifar10/p2/strobe/flash/results_flash_mid_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 



#####cifar10 polarity 3

##Trigger size 10%
# Trigger length
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p3/continuous/static_trigger/results_static_start_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p3/continuous/static_trigger/results_static_end_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p3/continuous/static_trigger/results_static_mid_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8

cp experiments/results3.csv results/seed64/cifar10/p3/continuous/static_trigger/results_static_start_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p3/continuous/static_trigger/results_static_end_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p3/continuous/static_trigger/results_static_mid_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# # Trigger length
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p3/continuous/static_trigger/results_static_start_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p3/continuous/static_trigger/results_static_end_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p3/continuous/static_trigger/results_static_mid_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

###Strobe
##Trigger size 10%
# Trigger length
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p3/strobe/static_trigger/results_static_start_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p3/strobe/static_trigger/results_static_end_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p3/strobe/static_trigger/results_static_mid_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p3/strobe/static_trigger/results_static_start_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p3/strobe/static_trigger/results_static_end_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p3/strobe/static_trigger/results_static_mid_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# Trigger length
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p3/strobe/static_trigger/results_static_start_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p3/strobe/static_trigger/results_static_end_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p3/strobe/static_trigger/results_static_mid_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Flash

# # Trigger length
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p3/continuous/flash/results_flash_start.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p3/continuous/flash/results_flash_end.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/cifar10/p3/continuous/flash/results_flash_mid.csv
sed -i '2,$d' experiments/results3.csv 


###Flash strobe

# # Trigger length
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/cifar10/p3/strobe/flash/results_flash_start_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/cifar10/p3/strobe/flash/results_flash_end_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset cifar10 --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/cifar10/p3/strobe/flash/results_flash_mid_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 








#################################################
#################################################
###########   ALL mnist POLARITIES   ##########
#################################################
#################################################


#####mnist polarity 0

##Trigger size 10%
# Trigger length
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p0/continuous/static_trigger/results_static_start_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p0/continuous/static_trigger/results_static_end_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p0/continuous/static_trigger/results_static_mid_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8

cp experiments/results3.csv results/seed64/mnist/p0/continuous/static_trigger/results_static_start_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p0/continuous/static_trigger/results_static_end_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p0/continuous/static_trigger/results_static_mid_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# # Trigger length
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p0/continuous/static_trigger/results_static_start_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p0/continuous/static_trigger/results_static_end_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p0/continuous/static_trigger/results_static_mid_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

###Strobe
##Trigger size 10%
# Trigger length
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p0/strobe/static_trigger/results_static_start_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p0/strobe/static_trigger/results_static_end_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p0/strobe/static_trigger/results_static_mid_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p0/strobe/static_trigger/results_static_start_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p0/strobe/static_trigger/results_static_end_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p0/strobe/static_trigger/results_static_mid_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# Trigger length
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p0/strobe/static_trigger/results_static_start_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p0/strobe/static_trigger/results_static_end_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 0 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p0/strobe/static_trigger/results_static_mid_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Flash

# # Trigger length
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p0/continuous/flash/results_flash_start.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p0/continuous/flash/results_flash_end.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p0/continuous/flash/results_flash_mid.csv
sed -i '2,$d' experiments/results3.csv 


###Flash strobe

# # Trigger length
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/mnist/p0/strobe/flash/results_flash_start_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p0/strobe/flash/results_flash_end_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 0 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/mnist/p0/strobe/flash/results_flash_mid_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 









#####mnist polarity 2

##Trigger size 10%
# Trigger length
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p2/continuous/static_trigger/results_static_start_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p2/continuous/static_trigger/results_static_end_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p2/continuous/static_trigger/results_static_mid_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8

cp experiments/results3.csv results/seed64/mnist/p2/continuous/static_trigger/results_static_start_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p2/continuous/static_trigger/results_static_end_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p2/continuous/static_trigger/results_static_mid_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# # Trigger length
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p2/continuous/static_trigger/results_static_start_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p2/continuous/static_trigger/results_static_end_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p2/continuous/static_trigger/results_static_mid_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

###Strobe
##Trigger size 10%
# Trigger length
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p2/strobe/static_trigger/results_static_start_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p2/strobe/static_trigger/results_static_end_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p2/strobe/static_trigger/results_static_mid_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p2/strobe/static_trigger/results_static_start_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p2/strobe/static_trigger/results_static_end_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p2/strobe/static_trigger/results_static_mid_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# Trigger length
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p2/strobe/static_trigger/results_static_start_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p2/strobe/static_trigger/results_static_end_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 2 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p2/strobe/static_trigger/results_static_mid_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Flash

# # Trigger length
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p2/continuous/flash/results_flash_start.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p2/continuous/flash/results_flash_end.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p2/continuous/flash/results_flash_mid.csv
sed -i '2,$d' experiments/results3.csv 


###Flash strobe

# # Trigger length
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/mnist/p2/strobe/flash/results_flash_start_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p2/strobe/flash/results_flash_end_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 2 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/mnist/p2/strobe/flash/results_flash_mid_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 









#####mnist polarity 3

##Trigger size 10%
# Trigger length
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p3/continuous/static_trigger/results_static_start_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p3/continuous/static_trigger/results_static_end_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p3/continuous/static_trigger/results_static_mid_size0.1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8

cp experiments/results3.csv results/seed64/mnist/p3/continuous/static_trigger/results_static_start_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p3/continuous/static_trigger/results_static_end_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p3/continuous/static_trigger/results_static_mid_size0.2.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# # Trigger length
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p3/continuous/static_trigger/results_static_start_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p3/continuous/static_trigger/results_static_end_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p3/continuous/static_trigger/results_static_mid_size0.3.csv
sed -i '2,$d' experiments/results3.csv 

###Strobe
##Trigger size 10%
# Trigger length
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p3/strobe/static_trigger/results_static_start_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p3/strobe/static_trigger/results_static_end_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.1 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p3/strobe/static_trigger/results_static_mid_size0.1_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 20%

# Trigger length
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p3/strobe/static_trigger/results_static_start_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p3/strobe/static_trigger/results_static_end_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p3/strobe/static_trigger/results_static_mid_size0.2_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Trigger size 30%

# Trigger length
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p3/strobe/static_trigger/results_static_start_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p3/strobe/static_trigger/results_static_end_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.3 --epsilon 0.1 --type static --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p3/strobe/static_trigger/results_static_mid_size0.3_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

##Flash

# # Trigger length
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p3/continuous/flash/results_flash_start.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 14 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 12 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 10 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 8 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p3/continuous/flash/results_flash_end.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 2
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 4
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 6
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 0 --strobe_on_duration 1 --trigger_length 8
cp experiments/results3.csv results/seed64/mnist/p3/continuous/flash/results_flash_mid.csv
sed -i '2,$d' experiments/results3.csv 


###Flash strobe

# # Trigger length
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/mnist/p3/strobe/flash/results_flash_start_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

#trigger at the back
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 15 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 13 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 11 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 9 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 11

cp experiments/results3.csv results/seed64/mnist/p3/strobe/flash/results_flash_end_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 

# trigger in the middle
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 7 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 1
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 6 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 3
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 5 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 4 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 7
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 3 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 9
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 64 --save_name results3 --epochs 10 --start 2 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 11
cp experiments/results3.csv results/seed64/mnist/p3/strobe/flash/results_flash_mid_strobegap1.csv
sed -i '2,$d' experiments/results3.csv 


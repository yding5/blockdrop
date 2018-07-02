#!/bin/csh

#$ -M yding5@nd.edu	 # Email address for job notification
#$ -m abe		 # Send mail when job begins, ends and aborts
#$ -pe smp 24          # Specify parallel environment and legal core size
#$ -q gpu             # Specify queue (use ‘debug’ for development)
#$ -N base_GPU_train_1        # Specify job name

module load python cuda/8.0 tensorflow    # Required modules
python cifar10_multi_gpu_train.py --data_dir ./dataset/

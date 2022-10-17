#!/usr/bin/env bash
CONFIG=$1
CHECK_POINT=$2
GPUS=$3
PORT=${PORT:-29501}

#OMP_NUM_THREADS=1 torchrun --nproc_per_node=$GPUS --master_port=$PORT  $(dirname "$0")/test.py $CONFIG $CHECK_POINT --dist ${@:4}
OMP_NUM_THREADS=1 torchrun --nproc_per_node=$GPUS --master_port=$RANDOM \
$(dirname "$0")/test.py \
--config /home/kshah/SoftGroup/configs/softgroup_s3dis_fold5.yaml \
--checkpoint $CHECK_POINT \
--dist ${@:1} \
--out /netscratch/$USER/SoftGroup_nets/outputs
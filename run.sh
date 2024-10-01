#!/bin/sh

exp_name=" baseline"
python train_stage1.py --exp_name $exp_name --dn PS --v1 0.25 --v2 0.1  --num_epoch 18 --save
echo "----------------- Start Stage 2 -----------------"
python train_stage2.py --exp_name $exp_name --dn PS --num_epoch 50 --save
echo "----------------- Start Scoring -----------------"
python evaluate_CFPRF.py --exp_name $exp_name --eval --dn PS


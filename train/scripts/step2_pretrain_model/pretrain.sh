#!/bin/bash

# Command line options go here
#SBATCH --partition=g2
#SBATCH --time=04:00:00
#SBATCH --nodes=1
#SBATCH --job-name=pretrain
#SBATCH --output=pretrain.out
#SBATCH --gpus-per-node=1

# Command(s) goes here
bash ./gcp_node-1_gpu/dataset-arxiv_tokenizer-sentencepiece_model-gpt_0.125B/zero-0_dp-1_pp-1_tp-1_flashattn2-on.sh \
    --input_tokenizer_file ~/ucllm_nedo_dev/train/output/step1_train_tokenizer/botchan/botchan.model \
    --output_model_dir ~/ucllm_nedo_dev/train/output/step2_pretrain_model/ \
    --save_interval 1000

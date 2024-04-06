#!/bin/bash

# Command line options go here
#SBATCH --partition=g2
#SBATCH --time=01:00:00
#SBATCH --nodes=7
#SBATCH --job-name=pretrain_gpt3_small
#SBATCH --output=./jobs/outs/pretrain_gpt3_small_test.out
#SBATCH --gpus-per-node=1

# Command(s) goes here
bash ~/ucllm_nedo_prod_reproduce/train/scripts/step2_pretrain_model/gcp_node-1_gpu/dataset-arxiv_tokenizer-sentencepiece_model-gpt_0.125B/zero-0_dp-1_pp-1_tp-1_flashattn2-on.sh --input_tokenizer_file ~/ucllm_nedo_prod_reproduce/train/output/step1_train_tokenizer/botchan/botchan.model --output_model_dir ~/../../persistentshare/storage/team_haijima/tatsu/model_checkpoint/ --save_interval 700

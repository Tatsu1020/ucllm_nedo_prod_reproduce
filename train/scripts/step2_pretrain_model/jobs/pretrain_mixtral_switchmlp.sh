#!/bin/bash

# Command line options go here
#SBATCH --partition=g2
#SBATCH --time=06:00:00
#SBATCH --nodes=1
#SBATCH --job-name=test
#SBATCH --output=./jobs/outs/pretrain_mixtral_switchmlp_final.out
#SBATCH --gpus-per-node=4

# Command(s) goes here
bash ~/ucllm_nedo_prod_reproduce/train/scripts/step2_pretrain_model/gcp_node-1_gpu/dataset-arxiv_tokenizer-sentencepiece_model-gpt_0.125B/pretrain_mixtral_switchmlp.sh --input_tokenizer_file ~/ucllm_nedo_prod_reproduce/train/output/step1_train_tokenizer/botchan/botchan.model --output_model_dir ~/../../persistentshare/storage/team_haijima/tatsu/model_checkpoint/ --save_interval 700

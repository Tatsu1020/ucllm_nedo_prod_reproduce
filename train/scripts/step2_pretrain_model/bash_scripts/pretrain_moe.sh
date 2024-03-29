#!/bin/bash

# Command line options go here
#SBATCH --partition=g2
#SBATCH --time=16:00:00
#SBATCH --nodes=1
#SBATCH --job-name=pretrain_mistral_moe
#SBATCH --output=pretrain_mistral.out
#SBATCH --gpus-per-node=1

# Command(s) goes here
bash ~/ucllm_nedo_prod_reproduce/train/scripts/step2_pretrain_model/gcp_node-1_gpu/dataset-arxiv_tokenizer-sentencepiece_model-gpt_0.125B/pretrain_mistral_small_moe.sh --input_tokenizer_file ~/ucllm_nedo_prod_reproduce/train/output/step1_train_tokenizer/botchan/botchan.model --output_model_dir ~/ucllm_nedo_prod_reproduce/train/output/step2_pretrain_model/ --save_interval 700

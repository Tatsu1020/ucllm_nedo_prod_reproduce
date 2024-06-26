#!/bin/bash

# Command line options go here
#SBATCH --partition=g2
#SBATCH --time=06:00:00
#SBATCH --gpus-per-node=2
#SBATCH --nodelist=mlpre-g2-ghpc-7
#SBATCH --job-name=pretrain
#SBATCH --output=./jobs/outs/pretrain_mistral_ds_moe.out
#SBATCH --gpus-per-node=1

# Command(s) goes here
bash ~/ucllm_nedo_prod_reproduce/train/scripts/step2_pretrain_model/gcp_node-1_gpu/dataset-arxiv_tokenizer-sentencepiece_model-gpt_0.125B/pretrain_mistral_small_deepspeed_moe_rope.sh --input_tokenizer_file ~/ucllm_nedo_prod_reproduce/train/output/step1_train_tokenizer/botchan/botchan.model --output_model_dir ~/../../persistentshare/storage/team_haijima/tatsu/model_checkpoint/ --save_interval 700

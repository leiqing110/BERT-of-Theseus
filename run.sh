export GLUE_DIR=/zhangleisx4614/code/pytorch_bert_chinese_classification-main/data/
export TASK_NAME=custom


CUDA_VISIBLE_DEVICES=1 python ./run_glue.py \
--model_name_or_path /zhangleisx4614/code/pytorch_bert_chinese_classification-main/torch2tf/local-pt-checkpoint-1103-thesues/ \
--task_name $TASK_NAME \
--do_train \
--do_eval \
--do_lower_case \
--data_dir "$GLUE_DIR/$TASK_NAME" \
--max_seq_length 128 \
--per_gpu_train_batch_size 64 \
--per_gpu_eval_batch_size 64 \
--learning_rate 2e-5 \
--save_steps 500 \
--num_train_epochs 15 \
--output_dir ./save_successor/ \
--evaluate_during_training \
--replacing_rate 0.3 \
--scheduler_type linear \
--scheduler_linear_k 0.0006 \
--overwrite_output_dir
export GLUE_DIR=/path/to/glue_data
export TASK_NAME=custom

python ./run_glue.py \
--model_name_or_path /path/to/saved_predecessor \
--task_name $TASK_NAME \
--do_train \
--do_eval \
--do_lower_case \
--data_dir "$GLUE_DIR/$TASK_NAME" \
--max_seq_length 128 \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--learning_rate 2e-5 \
--save_steps 50 \
--num_train_epochs 15 \
--output_dir /path/to/save_successor/ \
--evaluate_during_training \
--replacing_rate 0.3 \
--scheduler_type linear \
--scheduler_linear_k 0.0006
export GLUE_DIR=/zhangleisx4614/code/pytorch_bert_chinese_classification-main/data/
export TASK_NAME=custom

CUDA_VISIBLE_DEVICES=2 python ./run_glue.py \
--model_name_or_path /zhangleisx4614/code/pytorch_bert_chinese_classification-main/checkpoints/online_model/best_result_test4000_train_11.2w_5w_easy_new_5.3_29_class_re_1220.pt_bin/ \
--task_name $TASK_NAME \
--do_train \
--do_eval \
--do_lower_case \
--data_dir "$GLUE_DIR/$TASK_NAME" \
--max_seq_length 64 \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--learning_rate 2e-5 \
--save_steps 500 \
--num_train_epochs 15 \
--output_dir save_successor_entity_properties_0207_rep0.4/ \
--evaluate_during_training \
--replacing_rate 0.4 \
--scheduler_type linear \
--scheduler_linear_k 0.0006 \
--overwrite_output_dir
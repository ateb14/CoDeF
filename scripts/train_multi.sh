GPUS=0

NAME=disco_0
EXP_NAME=wo_mask_wo_flow

ROOT_DIRECTORY="all_sequences/$NAME/$NAME"
MODEL_SAVE_PATH="ckpts/all_sequences/$NAME"
LOG_SAVE_PATH="logs/all_sequences/$NAME"

MASK_DIRECTORY="all_sequences/$NAME/${NAME}_masks_0 all_sequences/$NAME/${NAME}_masks_1"
FLOW_DIRECTORY="all_sequences/$NAME/${NAME}_flow"

python train.py --root_dir $ROOT_DIRECTORY \
                --model_save_path $MODEL_SAVE_PATH \
                --log_save_path $LOG_SAVE_PATH  \
                --gpus $GPUS \
                --encode_w --annealed \
                --config configs/${NAME}/${EXP_NAME}.yaml \
                --exp_name ${EXP_NAME}

# --mask_dir $MASK_DIRECTORY \
                # --flow_dir $FLOW_DIRECTORY \

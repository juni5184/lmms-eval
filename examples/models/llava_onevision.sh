export HF_HOME="/workspace/.huggingface_cache"

# pip install git+https://github.com/LLaVA-VL/LLaVA-NeXT.git
# pip install git+https://github.com/EvolvingLMMs-Lab/lmms-eval.git

accelerate launch --num_processes=2 --main_process_port 12399 -m lmms_eval \
    --model=llava_onevision \
    --model_args=pretrained=lmms-lab/llava-onevision-qwen2-0.5b-ov,conv_template=qwen_1_5,device_map=auto,model_name=llava_qwen \
    --tasks=mlvu_dev \
    --batch_size=1
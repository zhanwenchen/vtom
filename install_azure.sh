# install_azure.sh


# -1: Set gcc and g++ versions:
sudo update-alternatives --remove-all gcc
sudo update-alternatives --remove-all g++

sudo apt install gcc-12 g++-12
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 100
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-12 100
# TODO: remove a certain old NVIDIA apt-key with sudo apt-key remove ...


# 1. (DONE)
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.1-1_all.deb # 20.04
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.1-1_all.deb # 20.04
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.1-1_all.deb # 20.04
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb # 22.04
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb # 22.04
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt update
# 2.1 Install nvidia-driver-550
# 2.1 Install nvidia-driver-545
sudo apt update
sudo apt install nvidia-driver-550
sudo apt install nvidia-driver-545
# 2.2 Install CUDA 12.4
# 2.2 Install CUDA 12.3
cd # Cannot have .deb be in a /mnt drive.

sudo apt install cuda-toolkit-12-4
sudo apt remove cuda-toolkit-12-3
sudo apt remove cuda-toolkit-12-3
sudo apt remove cuda-toolkit-12-3
sudo apt install cuda-toolkit-12-3
sudo bash -c "echo '/usr/local/cuda/lib64' > /etc/ld.so.conf"
sudo bash -c "echo 'LD_LIBRARY_PATH=/usr/local/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}' >> /etc/environment"
# (DONE) Install cuDNN 8 (note that pytorch doesn't support cudnn 9 yet)

# sudo apt install cudnn9-cuda-12 libcudnn9-samples
sudo apt remove libcudnn8 libcudnn8-dev libcudnn8-samples
sudo mv /etc/apt/sources.list.d/cuda-ubuntu2004-x86_64.list /etc/apt/sources.list.d/cuda-ubuntu2004-x86_64.list.save
sudo apt install cudnn8-cuda-12 libcudnn8-samples

# sudo apt install cudnn9-cuda-12 libcudnn9-samples
sudo apt remove libcudnn8 libcudnn8-dev libcudnn8-samples
sudo mv /etc/apt/sources.list.d/cuda-ubuntu2004-x86_64.list /etc/apt/sources.list.d/cuda-ubuntu2004-x86_64.list.save
sudo apt install cudnn8-cuda-12 libcudnn8-samples
sudo apt install libcusparse-12-4 libcusparse-dev-12-4
# sudo apt install cudnn9-cuda-12 libcudnn9-samples
sudo apt remove libcudnn8 libcudnn8-dev libcudnn8-samples
sudo mv /etc/apt/sources.list.d/cuda-ubuntu2004-x86_64.list /etc/apt/sources.list.d/cuda-ubuntu2004-x86_64.list.save
sudo apt install cudnn8-cuda-12 libcudnn8-samples
sudo apt install libcusparse-12-4 libcusparse-dev-12-4
sudo apt install nvidia-fabricmanager-550 nvidia-fabricmanager-dev-550 cuda-drivers-fabricmanager-550
# (DONE) NCCL:
sudo apt install libnccl2 libnccl-dev

sudo apt install libcusparse-12-4 libcusparse-dev-12-4
sudo apt install nvidia-fabricmanager-550 nvidia-fabricmanager-dev-550 cuda-drivers-fabricmanager-550

# (DONE) NVIDIA Docker and Moby Docker engine
sudo apt install nvidia-container-toolkit moby-engine moby-cli

sudo apt install nvidia-fabricmanager-550 nvidia-fabricmanager-dev-550 cuda-drivers-fabricmanager-550
sudo apt install nvidia-fabricmanager-545 nvidia-fabricmanager-dev-545

# (DONE) Remaining nvidia libs
sudo apt install libxnvctrl0 nvidia-settings

# apt clean up
sudo apt autoremove
git clone --single-branch --branch n12.0.16.1 https://git.videolan.org/git/ffmpeg/nv-codec-headers.git # NOTE: n11.1.5.3 works. n12.0.16.0 works. n12.0.16.1 works. n12.1.14.0 and above do not work.
sudo apt autoclean


# The libs
git clone --single-branch --branch n12.0.16.1 https://git.videolan.org/git/ffmpeg/nv-codec-headers.git # NOTE: n11.1.5.3 works. n12.0.16.0 works. n12.0.16.1 works. n12.1.14.0 and above do not work.
git clone --single-branch --branch n5.1.4 https://git.ffmpeg.org/ffmpeg.git # NOTE: 6.0 and above will break decord.
export INSTALL_DIR=/mnt/batch/tasks/shared/LS_root/mounts/clusters/vtom-a100-x4-n1/code/Users/video.tom/
export PROJECT_DIR=${INSTALL_DIR}/${ENV_NAME}
export MY_SM=86 # NOTE: For A100, it's 8.0
git clone --single-branch --branch n12.0.16.1 https://git.videolan.org/git/ffmpeg/nv-codec-headers.git # NOTE: n11.1.5.3 works. n12.0.16.0 works. n12.0.16.1 works. n12.1.14.0 and above do not work.
git clone --single-branch --branch n5.1.4 https://git.ffmpeg.org/ffmpeg.git # NOTE: 6.0 and above will break decord.
cd ${INSTALL_DIR}

export MY_SM=86 # NOTE: For A100, it's 8.0
git clone --single-branch --branch n12.0.16.1 https://git.videolan.org/git/ffmpeg/nv-codec-headers.git # NOTE: n11.1.5.3 works. n12.0.16.0 works. n12.0.16.1 works. n12.1.14.0 and above do not work.
git clone --single-branch --branch n5.1.4 https://git.ffmpeg.org/ffmpeg.git # NOTE: 6.0 and above will break decord.
cd nv-codec-headers
sudo make install
export MY_SM=86 # NOTE: For A100, it's 8.0
# 1b. Install ffmpeg5 with NVIDIA Video Codec SDK support
git clone --single-branch --branch n5.1.4 https://git.ffmpeg.org/ffmpeg.git # NOTE: 6.0 and above will break decord.
git clone https://git.ffmpeg.org/ffmpeg.git
cd ffmpeg
export MY_SM=86 # NOTE: For A100, it's 8.0
export MY_SM=80
./configure \
  --extra-cflags='-I/usr/local/cuda/include' \
  --extra-ldflags='-L/usr/local/cuda/lib64' \
  --nvccflags="-gencode arch=compute_${MY_SM},code=sm_${MY_SM} -O2" \
  --disable-doc \
  --enable-decoder=aac \
  --enable-decoder=h264 \
  --enable-decoder=h264_cuvid \
  --enable-decoder=rawvideo \
  --enable-indev=lavfi \
  --enable-encoder=libx264 \
  --enable-encoder=h264_nvenc \
  --enable-demuxer=mov \
  --enable-muxer=mp4 \
  --enable-filter=scale \
  --enable-filter=testsrc2 \
  --enable-protocol=file \
  --enable-protocol=https \
  --enable-gnutls \
  --enable-shared \
  --enable-gpl \
  --enable-nonfree \
  --enable-cuda-nvcc \
  --enable-libx264 \
  --enable-nvenc \
  --enable-cuvid \
  --disable-postproc \
  --disable-static \
  --enable-nvdec
make clean
make -j
sudo make install
sudo sh -c "echo '/usr/local/lib' >> /etc/ld.so.conf"
sudo ldconfig


# 1c. Confirm your ffmpeg has nvcodec enabled
# Examples in https://pytorch.org/audio/stable/build.ffmpeg.html#checking-the-intallation
ffprobe -hide_banner -decoders | grep h264
ffmpeg -hide_banner -encoders | grep 264
src="https://download.pytorch.org/torchaudio/tutorial-assets/stream-api/NASAs_Most_Scientifically_Complex_Space_Observatory_Requires_Precision-MP4_small.mp4"
ffmpeg -hide_banner -y -vsync 0 \
     -hwaccel cuvid \
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh
     -i "${src}" \
     -c:a copy \
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh

# 2.2 Install Anaconda under ${HOME}. Will not work under /mnt
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh
conda create -n vtom cmake ninja intel::mkl-static intel::mkl-include astunparse "expecttest!=0.2.0" hypothesis numpy psutil pyyaml requests setuptools "typing-extensions>=4.8.0" sympy filelock networkx jinja2 fsspec
# Say yes to everything
source .bashrc
conda install libstdcxx-ng=12.3 libgcc-ng=12.3 libgomp=12.3 -c defaults -c conda-forge
conda install -c pytorch magma-cuda124
pip install types-dataclasses "optree>=0.9.1" lark
# To run GPT4V
pip install yacs azure-storage-blob ipywidgets
conda install libstdcxx-ng=12.3 libgcc-ng=12.3 libgomp=12.3 -c defaults -c conda-forge
cd && git clone --recursive --single-branch --branch v2.2.2 https://github.com/pytorch/pytorch.git
pip install types-dataclasses "optree>=0.9.1" lark
# To run GPT4V
pip install yacs azure-storage-blob ipywidgets
conda install libstdcxx-ng=12.3 libgcc-ng=12.3 libgomp=12.3 -c defaults -c conda-forge
cd && git clone --recursive --single-branch --branch v2.2.2 https://github.com/pytorch/pytorch.git
# TODO: 1. Rename CUSPARSE_COMPUTE_TF32 to CUSPARSE_COMPUTE_32F https://github.com/pytorch/pytorch/pull/99468/commits/367387bab836c73c23719f97d929572c8b4e0fad
# TODO: 2. Add #include <thrust/swap.h> after imports to pytorch/aten/src/ATen/native/cuda/LinearAlgebra.cu
pip install types-dataclasses "optree>=0.9.1" lark
# To run GPT4V
export TORCH_CUDA_ARCH_LIST="8.6" # NOTE: For A100, it's 8.0

cd && git clone --recursive --single-branch --branch v2.2.2 https://github.com/pytorch/pytorch.git
# TODO: 1. Rename CUSPARSE_COMPUTE_TF32 to CUSPARSE_COMPUTE_32F https://github.com/pytorch/pytorch/pull/99468/commits/367387bab836c73c23719f97d929572c8b4e0fad
# TODO: 2. Add #include <thrust/swap.h> after imports to pytorch/aten/src/ATen/native/cuda/LinearAlgebra.cu
echo "DONE building pytorch" && cd # NOTE it's important to move out of the pytorch build directory to import torch.
git submodule sync
git submodule update --init --recursive
pip install -U tqdm gradio matplotlib sentencepiece protobuf transformers tokenizers huggingface_hub accelerate
# TODO: 2. Add #include <thrust/swap.h> after imports to pytorch/aten/src/ATen/native/cuda/LinearAlgebra.cu
echo "DONE building pytorch" && cd # NOTE it's important to move out of the pytorch build directory to import torch.
export TORCH_CUDA_ARCH_LIST="8.0"
export USE_FFMPEG=1
pip install -U tqdm gradio matplotlib sentencepiece protobuf transformers tokenizers huggingface_hub accelerate
python setup.py clean && echo "Done Cleaning"
echo "DONE building pytorch" && cd # NOTE it's important to move out of the pytorch build directory to import torch.
cmake .. -DUSE_CUDA=ON -DCMAKE_CUDA_ARCHITECTURES=86 -DCMAKE_BUILD_TYPE=Release
python -c "import torch; print(torch.cuda.is_available()); exit()"
pip install -U tqdm gradio matplotlib sentencepiece protobuf transformers tokenizers huggingface_hub accelerate
pip install -U tqdm gradio matplotlib sentencepiece protobuf transformers tokenizers huggingface_hub accelerate

pip install .
# 3. Install decord
cd
git clone --recursive https://github.com/zhanwenchen/decord
cd decord
pip install .
cmake .. -DUSE_CUDA=ON -DCMAKE_CUDA_ARCHITECTURES=80 -DCMAKE_BUILD_TYPE=Release
make -j
# Install decord Python bindings
conda activate vtom
pip install .
python setup.py install --user
# Test decord installation
cd examples
# Run all the Jupyter Notebooks under the vtom environment
# You need to install ALSA (`sudo apt install libasound2-dev` and then `pip install simpleaudio opencv-python-headless`)

Additionally, install [FlashAttention](https://github.com/HazyResearch/flash-attention) for training,
```shell
pip install ninja einops
conda activate vtom
cd ~/vtom

cd
git clone --single-branch --branch v2.3.3 git@github.com:Dao-AILab/flash-attention.git
cd flash-attention
MAX_JOBS=4 python setup.py install # Cannot use pip install . on this repo. Also need to specify
conda activate vtom
cd ~/vtom


# Move data here


conda activate vtom
cd ~/vtom
# Finally, run training.
conda activate vtom
cd ~/vtom
# OMP_NUM_THREADS = nb_cpu_threads / nproc_per_node: https://github.com/pytorch/pytorch/issues/22260#issuecomment-508196387
export NPROC_PER_NODE=4
export OMP_NUM_THREADS=$(($(nproc) / ${NPROC_PER_NODE}))
PYTHONPATH="./:$PYTHONPATH" torchrun --nproc_per_node=${NPROC_PER_NODE} --master_port 29001 video_chatgpt/train/train_mem.py \
          --model_name_or_path ./LLaVA-Lightning-7B-v1-1 \
          --version v1 \
          --data_path video_chatgpt_training_removed.json \
          --video_folder data/clip_features_train \
          --tune_mm_mlp_adapter True \
          --mm_use_vid_start_end \
          --bf16 False \
          --output_dir ./Video-ChatGPT_7B-1.1_Checkpoints \
          --num_train_epochs 3 \
          --per_device_train_batch_size 8 \
          --per_device_eval_batch_size 8 \
          --gradient_accumulation_steps 1 \
          --evaluation_strategy "no" \
          --save_strategy "steps" \
          --save_steps 3000 \
          --save_total_limit 3 \
          --learning_rate 2e-5 \
          --weight_decay 0. \
          --warmup_ratio 0.03 \
          --lr_scheduler_type "cosine" \
          --logging_steps 100 \
          --tf32 True \
          --model_max_length 2048 \
          --gradient_checkpointing True \
          --lazy_preprocess True


az storage blob download --account-name vtom --container-name vtom --name Zero_Shot_QA.zip --file Zero_Shot_QA.zip

az storage file download-batch \
  --account-name <account_name> \
  --source Users/video.tom/vtom/Video-ChatGPT_7B-1.1_Checkpoints_old/checkpoint-9000 \
  --account-key <your_az_account_key> \
  -s <your_az_code> \
  -d .

# Run Eval on ActivityNet QA:
conda activate vtom
cd ~/vtom
PYTHONPATH="./:$PYTHONPATH" python video_chatgpt/eval/run_inference_activitynet_qa.py \
# Generate video features and predictions
PYTHONPATH="./:$PYTHONPATH" python video_chatgpt/eval/run_inference_activitynet_qa.py \
    --model-name Video-ChatGPT_7B-1.1_Checkpoints_old/checkpoint-9000  \
    --video_dir data/ActivityNet/all_test \
    --gt_file_question data/ActivityNet/Zero_Shot_QA/test_q.json \
    --gt_file_answers data/ActivityNet/Zero_Shot_QA/test_a.json \
    --output_dir data/ActivityNet/output \
    --output_name video_chatgpt_activitynet_qa_preds
    # --projection_path Video-ChatGPT_7B-1.1_Checkpoints_old/checkpoint-9000

PYTHONPATH="./:$PYTHONPATH" python quantitative_evaluation/evaluate_activitynet_qa.py \
    --pred_path data/ActivityNet/output/video_chatgpt_activitynet_qa_preds.json \
    --output_dir data/ActivityNet/output \
    --output_json data/ActivityNet/output/video_chatgpt_activitynet_qa_results.json \
    --api_key <my_api_key> \
    --num_tasks 1

# Finally, run training on Social-IQ 2.0.
conda activate vtom
cd ~/vtom
# OMP_NUM_THREADS = nb_cpu_threads / nproc_per_node: https://github.com/pytorch/pytorch/issues/22260#issuecomment-508196387
export CUDA_VISIBLE_DEVICES="0,1"
export NPROC_PER_NODE=$(echo ${CUDA_VISIBLE_DEVICES} | tr -cd , | wc -c); ((NUM_GPUS++))
export OMP_NUM_THREADS=$(($(nproc) / ${NPROC_PER_NODE}))
PYTHONPATH="./:$PYTHONPATH" torchrun --nproc_per_node=${NPROC_PER_NODE} --master_port 29001 video_chatgpt/train/train_mem.py \
          --model_name_or_path ./LLaVA-Lightning-7B-v1-1 \
          --version v1 \
          --data_path data/siq2/qa/qa_train_instruction_removed.json \
          --video_folder data/siq2/video_features \
          --tune_mm_mlp_adapter True \
          --mm_use_vid_start_end \
          --bf16 True \
          --output_dir ./vtom_checkpoints_1 \
          --num_train_epochs 3 \
          --per_device_train_batch_size 8 \
          --per_device_eval_batch_size 8 \
          --gradient_accumulation_steps 1 \
          --evaluation_strategy "no" \
          --save_strategy "steps" \
          --save_steps 3000 \
          --save_total_limit 3 \
          --learning_rate 2e-5 \
          --weight_decay 0. \
          --warmup_ratio 0.03 \
          --lr_scheduler_type "cosine" \
          --logging_steps 100 \
          --tf32 True \
          --model_max_length 2048 \
          --gradient_checkpointing True \
          --lazy_preprocess True


# Val
# Make qa_val_instruction.json
python scripts/convert_instruction_json_to_training_format_siq2.py \
        --input_json_file data/siq2/qa/qa_val.json \
        --output_json_file data/siq2/qa/qa_val_instruction.json


export NPROC_PER_NODE=4
export OMP_NUM_THREADS=$(($(nproc) / ${NPROC_PER_NODE}))
PYTHONPATH="./:$PYTHONPATH" python video_chatgpt/eval/run_inference_siq2_qa.py \
    --model-name ${HOME}/vtom_checkpoints_1  \
    --video_dir data/siq2/video \
    --gt_file_qa data/siq2/qa/qa_val_instruction_removed.json \
    --output_dir data/siq2/output \
    --output_name video_chatgpt_siq2_qa_preds_val

pip install "openai<1.0.0"

PYTHONPATH="./:$PYTHONPATH" python quantitative_evaluation/evaluate_siq2_qa.py \
    --pred_path data/siq2/output/video_chatgpt_siq2_qa_preds_val.json \
    --output_dir data/siq2/output \
    --output_json data/siq2/output/video_chatgpt_siq2_qa_results.json \
    --api_key <my_api_key> \
    --num_tasks 1


# Test

# Make qa_test_instruction.json
# First, convert qa_test.json to valid JSON (add , to every line except for the last line. Then enclose everything in [])
python scripts/convert_instruction_json_to_training_format_siq2.py \
        --input_json_file data/siq2/qa/qa_test.json \
        --output_json_file data/siq2/qa/qa_test_instruction.json

# python scripts/remove_nonexistent_data.py

export NPROC_PER_NODE=4
export OMP_NUM_THREADS=$(($(nproc) / ${NPROC_PER_NODE}))
PYTHONPATH="./:$PYTHONPATH" python video_chatgpt/eval/run_inference_siq2_qa.py \
    --model-name ${HOME}/vtom_checkpoints_1  \
    --video_dir data/siq2/video \
    --gt_file_qa data/siq2/qa/qa_test_instruction_removed.json \
    --output_dir data/siq2/output \
    --output_name video_chatgpt_siq2_qa_preds_test

PYTHONPATH="./:$PYTHONPATH" python quantitative_evaluation/evaluate_siq2_qa.py \
    --pred_path data/siq2/output/video_chatgpt_siq2_qa_preds_test.json \
    --output_dir data/siq2/output \
    --output_json data/siq2/output/video_chatgpt_siq2_qa_results_test.json \
    --api_key <my_api_key> \
    --num_tasks 1


# New task: Create new task
# 1. Create the merged qa_train and qa_test out of removed.
# Train: Out of a total of 6159 QA pairs, 565 are unavailable, leaving 5594.
python scripts/remove_nonexistent_data.py \
    --qa_json_fpath_in data/siq2/qa/qa_train.json \
    --qa_json_fpath_removed_out data/siq2/qa/qa_train_removed.json \
    --qa_json_fpath_nonexistent_out data/siq2/qa/qa_train_nonexistent.json \
    --video_features_dir data/siq2/video_features


python scripts/create_tom_localization_qa.py \
    --qa_json_fpath_in data/siq2/qa/qa_train_removed.json \
    --qa_json_fpath_out data/siq2/qa/qa_train_removed_merged_n3.json \
    --n 3

# Train: Out of a total of 943 QA pairs, 67 are unavailable, leaving 876.

# Remove nonexistent validation data
python scripts/remove_nonexistent_data.py \
    --qa_json_fpath_in data/siq2/qa/qa_val.json \
    --qa_json_fpath_removed_out data/siq2/qa/qa_val_removed.json \
    --qa_json_fpath_nonexistent_out data/siq2/qa/qa_val_nonexistent.json \
    --video_features_dir data/siq2/video_features

python scripts/create_tom_localization_qa.py \
    --qa_json_fpath_in data/siq2/qa/qa_val_removed.json \
    --qa_json_fpath_out data/siq2/qa/qa_val_removed_merged_n3.json \
    --n 3

# Train
python scripts/merge_videos_siq2.py \
    --video_dirpath_in data/siq2/video \
    --video_dirpath_out data/siq2/video_merged_n3 \
    --qa_path_train data/siq2/qa/qa_train_removed_merged_n3.json \
    --qa_path_val data/siq2/qa/qa_val_removed_merged_n3.json

# No difference between train and val - just all videos in a folder
# m /home/zhanwen/anaconda3/envs/vtom/lib/python3.10/site-packages/imageio_ffmpeg/binaries/ffmpeg-linux64-v4.2.2
python scripts/save_spatio_temporal_clip_features.py \
    --ts_by_videol_fpath_out data/siq2/qa/ts_by_video_qa_merged_n3.json \
    --qa_train_path data/siq2/qa/qa_train_removed_merged_n3.json \
    --qa_val_path data/siq2/qa/qa_val_removed_merged_n3.json \
    --video_dir_path data/siq2/video_merged_n3 \
    --clip_feat_path data/siq2/clip_features_merged_n3

python scripts/process_gt_qa.py \
    --input_json_file data/siq2/qa/qa_train_removed_merged_n3.json \
    --ts_dict_fpath data/siq2/qa/ts_by_video_qa_merged_n3.json \
    --output_json_file data/siq2/qa/qa_train_removed_merged_n3_with_frames_idx.json

python scripts/process_gt_qa.py \
    --input_json_file data/siq2/qa/qa_val_removed_merged_n3.json \
    --ts_dict_fpath data/siq2/qa/ts_by_video_qa_merged_n3.json \
    --output_json_file data/siq2/qa/qa_val_removed_merged_n3_with_frames_idx.json

# Make training and evaluation tomloc tasks.json
python scripts/convert_instruction_json_to_training_format_tomloc.py \
        --input_json_file data/siq2/tomloc/tomloc_val_removed_merged_n3_with_frames_idx.json \
        --output_json_file data/siq2/tomloc/tomloc_val_removed_merged_n3_with_frames_idx_instruction.json

python scripts/convert_instruction_json_to_training_format_tomloc.py \
        --input_json_file data/siq2/tomloc/tomloc_train_removed_merged_n3_with_frames_idx.json \
        --output_json_file data/siq2/tomloc/tomloc_train_removed_merged_n3_with_frames_idx_instruction.json

# Training tomloc
export CUDA_VISIBLE_DEVICES="0,1,2,3"
export NPROC_PER_NODE=$(echo ${CUDA_VISIBLE_DEVICES} | tr -cd , | wc -c); ((NUM_GPUS++))
export OMP_NUM_THREADS=$(($(nproc) / ${NPROC_PER_NODE}))
PYTHONPATH="./:$PYTHONPATH" torchrun --nproc_per_node=${NPROC_PER_NODE} --master_port 29001 video_chatgpt/train/train_mem.py \
          --model_name_or_path ./LLaVA-Lightning-7B-v1-1 \
          --version v1 \
          --data_path data/tomloc/qa/tomloc_train_removed_merged_n3_with_frames_idx_instruction.json \
          --video_folder data/tomloc/clip_features_merged_n3 \
          --tune_mm_mlp_adapter True \
          --mm_use_vid_start_end \
          --bf16 True \
          --output_dir ./tomloc_checkpoints_1 \
          --num_train_epochs 3 \
          --per_device_train_batch_size 8 \
          --per_device_eval_batch_size 8 \
          --gradient_accumulation_steps 1 \
          --evaluation_strategy "no" \
          --save_strategy "steps" \
          --save_steps 3000 \
          --save_total_limit 3 \
          --learning_rate 2e-5 \
          --weight_decay 0. \
          --warmup_ratio 0.03 \
          --lr_scheduler_type "cosine" \
          --logging_steps 100 \
          --tf32 True \
          --model_max_length 2048 \
          --gradient_checkpointing True \
          --lazy_preprocess True


# Val
# Make qa_val_instruction.json
python scripts/convert_instruction_json_to_training_format_siq2.py \
        --input_json_file data/siq2/qa/qa_val.json \
        --output_json_file data/siq2/qa/qa_val_instruction.json


export NPROC_PER_NODE=4
export OMP_NUM_THREADS=$(($(nproc) / ${NPROC_PER_NODE}))
PYTHONPATH="./:$PYTHONPATH" python video_chatgpt/eval/run_inference_siq2_qa.py \
    --model-name ${HOME}/vtom_checkpoints_1  \
    --video_dir data/siq2/video \
    --gt_file_qa data/siq2/qa/qa_val_instruction_removed.json \
    --output_dir data/siq2/output \
    --output_name video_chatgpt_siq2_qa_preds_val

pip install "openai<1.0.0"

PYTHONPATH="./:$PYTHONPATH" python quantitative_evaluation/evaluate_siq2_qa.py \
    --pred_path data/siq2/output/video_chatgpt_siq2_qa_preds_val.json \
    --output_dir data/siq2/output \
    --output_json data/siq2/output/video_chatgpt_siq2_qa_results.json \
    --api_key <my_api_key> \
    --num_tasks 1


# Test

# Make qa_test_instruction.json
# First, convert qa_test.json to valid JSON (add , to every line except for the last line. Then enclose everything in [])
python scripts/convert_instruction_json_to_training_format_siq2.py \
        --input_json_file data/siq2/qa/qa_test.json \
        --output_json_file data/siq2/qa/qa_test_instruction.json

# python scripts/remove_nonexistent_data.py

export NPROC_PER_NODE=4
export OMP_NUM_THREADS=$(($(nproc) / ${NPROC_PER_NODE}))
PYTHONPATH="./:$PYTHONPATH" python video_chatgpt/eval/run_inference_siq2_qa.py \
    --model-name ${HOME}/vtom_checkpoints_1  \
    --video_dir data/siq2/video \
    --gt_file_qa data/siq2/qa/qa_test_instruction_removed.json \
    --output_dir data/siq2/output \
    --output_name video_chatgpt_siq2_qa_preds_test

PYTHONPATH="./:$PYTHONPATH" python quantitative_evaluation/evaluate_siq2_qa.py \
    --pred_path data/siq2/output/video_chatgpt_siq2_qa_preds_test.json \
    --output_dir data/siq2/output \
    --output_json data/siq2/output/video_chatgpt_siq2_qa_results_test.json \
    --api_key <my_api_key> \
    --num_tasks 1


# New task: Create new task
# 1. Create the merged qa_train and qa_test out of removed.
# Train: Out of a total of 6159 QA pairs, 565 are unavailable, leaving 5594.
python scripts/remove_nonexistent_data.py \
    --qa_json_fpath_in data/siq2/qa/qa_train.json \
    --qa_json_fpath_removed_out data/siq2/qa/qa_train_removed.json \
    --qa_json_fpath_nonexistent_out data/siq2/qa/qa_train_nonexistent.json \
    --video_features_dir data/siq2/video_features


python scripts/create_tom_localization_qa.py \
    --qa_json_fpath_in data/siq2/qa/qa_train_removed.json \
    --qa_json_fpath_out data/siq2/qa/qa_train_removed_merged_n3.json \
    --n 3

# Train: Out of a total of 943 QA pairs, 67 are unavailable, leaving 876.

# Remove nonexistent validation data
python scripts/remove_nonexistent_data.py \
    --qa_json_fpath_in data/siq2/qa/qa_val.json \
    --qa_json_fpath_removed_out data/siq2/qa/qa_val_removed.json \
    --qa_json_fpath_nonexistent_out data/siq2/qa/qa_val_nonexistent.json \
    --video_features_dir data/siq2/video_features

python scripts/create_tom_localization_qa.py \
    --qa_json_fpath_in data/siq2/qa/qa_val_removed.json \
    --qa_json_fpath_out data/siq2/qa/qa_val_removed_merged_n3.json \
    --n 3

# Train
python scripts/merge_videos_siq2.py \
    --video_dirpath_in data/siq2/video \
    --video_dirpath_out data/siq2/video_merged_n3 \
    --qa_path_train data/siq2/qa/qa_train_removed_merged_n3.json \
    --qa_path_val data/siq2/qa/qa_val_removed_merged_n3.json

# No difference between train and val - just all videos in a folder
# m /home/zhanwen/anaconda3/envs/vtom/lib/python3.10/site-packages/imageio_ffmpeg/binaries/ffmpeg-linux64-v4.2.2
python scripts/save_spatio_temporal_clip_features.py \
    --ts_by_videol_fpath_out data/siq2/qa/ts_by_video_qa_merged_n3.json \
    --qa_train_path data/siq2/qa/qa_train_removed_merged_n3.json \
    --qa_val_path data/siq2/qa/qa_val_removed_merged_n3.json \
    --video_dir_path data/siq2/video_merged_n3 \
    --clip_feat_path data/siq2/clip_features_merged_n3

python scripts/process_gt_qa.py \
    --input_json_file data/siq2/qa/qa_train_removed_merged_n3.json \
    --ts_dict_fpath data/siq2/qa/ts_by_video_qa_merged_n3.json \
    --output_json_file data/siq2/qa/qa_train_removed_merged_n3_with_frames_idx.json

python scripts/process_gt_qa.py \
    --input_json_file data/siq2/qa/qa_val_removed_merged_n3.json \
    --ts_dict_fpath data/siq2/qa/ts_by_video_qa_merged_n3.json \
    --output_json_file data/siq2/qa/qa_val_removed_merged_n3_with_frames_idx.json

# Make training and evaluation tomloc tasks.json
python scripts/convert_instruction_json_to_training_format_tomloc.py \
        --input_json_file data/tomloc/qa/tomloc_val_removed_merged_n3_with_frames_idx.json \
        --output_json_file data/tomloc/qa/tomloc_val_removed_merged_n3_with_frames_idx_instruction.json

python scripts/convert_instruction_json_to_training_format_tomloc.py \
        --input_json_file data/tomloc/qa/tomloc_train_removed_merged_n3_with_frames_idx.json \
        --output_json_file data/tomloc/qa/tomloc_train_removed_merged_n3_with_frames_idx_instruction.json

# Training tomloc
export NPROC_PER_NODE=4 # 1 For debugging
export OMP_NUM_THREADS=$(($(nproc) / ${NPROC_PER_NODE}))
PYTHONPATH="./:$PYTHONPATH" torchrun --nproc_per_node=${NPROC_PER_NODE} --master_port 29001 video_chatgpt/train/train_mem.py \
          --model_name_or_path tomloc_checkpoints_1/checkpoint-400 \
          --version v1 \
          --data_path data/tomloc/qa/tomloc_train_removed_merged_n3_with_frames_idx_instruction.json \
          --video_folder data/tomloc/clip_features_merged_n3 \
          --tune_mm_mlp_adapter True \
          --mm_use_vid_start_end \
          --bf16 True \
          --output_dir ./tomloc_checkpoints_1_loo_pre \
          --num_train_epochs 3 \
          --per_device_train_batch_size 1 \
          --per_device_eval_batch_size 1 \
          --gradient_accumulation_steps 1 \
          --evaluation_strategy "no" \
          --save_strategy "steps" \
          --save_steps 200 \
          --save_total_limit 3 \
          --learning_rate 2e-5 \
          --weight_decay 0. \
          --warmup_ratio 0.03 \
          --lr_scheduler_type "cosine" \
          --logging_steps 100 \
          --tf32 True \
          --model_max_length 2048 \
          --gradient_checkpointing True \
          --lazy_preprocess True \
          --use_loo False \
          --num_frames 100 \
          --ddp_find_unused_parameters True

PYTHONPATH="./:$PYTHONPATH" python video_chatgpt/eval/run_inference_tomloc_qa.py \
    --model-name tomloc_checkpoints_1/checkpoint-400 \
    --video_dir data/tomloc/video_merged_n3 \
    --gt_file_qa data/tomloc/qa/tomloc_val_removed_merged_n3_with_frames_idx_instruction.json \
    --output_dir data/tomloc/output \
    --output_name video_chatgpt_tomloc_qa_preds_val

PYTHONPATH="./:$PYTHONPATH" python quantitative_evaluation/evaluate_tomloc_qa.py \
    --pred_path data/tomloc/output/video_chatgpt_tomloc_qa_preds_val.json \
    --output_dir data/tomloc/output \
    --output_json data/tomloc/output/video_chatgpt_tomloc_qa_results_test.json \
    --num_tasks 1

# Baseline model (video_chatgpt on tomloc after finetuning)
# completed_files: 878
# incomplete_files: 0
# All evaluation completed!
# Yes count: 605
# No count: 271
# Accuracy: 0.6906392694063926
# Average score: 0.6906392694063926

PYTHONPATH="./:$PYTHONPATH" python scripts/split_train_eval_loo.py \
    --input_json_file data/tomloc/qa/tomloc_train_removed_merged_n3_with_frames_idx_instruction.json \
    --qas_train_loo_fpath data/tomloc/qa/tomloc_train_loo_removed_merged_n3_with_frames_idx_instruction.json \
    --qas_eval_loo_fpath data/tomloc/qa/tomloc_eval_loo_removed_merged_n3_with_frames_idx_instruction.json


export NPROC_PER_NODE=4 # 1 For debugging
export OMP_NUM_THREADS=$(($(nproc) / ${NPROC_PER_NODE}))
PYTHONPATH="./:$PYTHONPATH" torchrun --nproc_per_node=${NPROC_PER_NODE} --master_port 29001 video_chatgpt/train/train_mem.py \
          --model_name_or_path ./Video-ChatGPT_7B-1.1_Checkpoints_old/ \
          --version v1 \
          --data_path data/tomloc/qa/tomloc_train_loo_removed_merged_n3_with_frames_idx_instruction.json \
          --video_folder data/tomloc/clip_features_merged_n3 \
          --tune_mm_mlp_adapter True \
          --mm_use_vid_start_end \
          --bf16 True \
          --output_dir ./tomloc_checkpoints_1_loo_pre \
          --num_train_epochs 3 \
          --per_device_train_batch_size 1 \
          --per_device_eval_batch_size 1 \
          --gradient_accumulation_steps 1 \
          --evaluation_strategy "no" \
          --save_strategy "steps" \
          --save_steps 200 \
          --save_total_limit 3 \
          --learning_rate 2e-5 \
          --weight_decay 0. \
          --warmup_ratio 0.03 \
          --lr_scheduler_type "cosine" \
          --logging_steps 100 \
          --tf32 True \
          --model_max_length 2048 \
          --gradient_checkpointing True \
          --lazy_preprocess True \
          --use_loo False \
          --num_frames 100 \
          --ddp_find_unused_parameters True


# Start loo
export NPROC_PER_NODE=1 # 1 For debugging
export OMP_NUM_THREADS=$(($(nproc) / ${NPROC_PER_NODE}))
PYTHONPATH="./:$PYTHONPATH" torchrun --nproc_per_node=${NPROC_PER_NODE} --master_port 29001 loo_mem.py --num_frames 100 --topk 5 --model_name_or_path ${HOME}/checkpoint-3800/ --data_path data/tomloc/qa/tomloc_eval_loo_removed_merged_n3_with_frames_idx_instruction.json --output_dir ./tomloc_checkpoints_1_loo_post --lazy_preprocess True --video_folder data/tomloc/clip_features_merged_n3 --bf16 True --tf32 True --tune_mm_mlp_adapter True


PYTHONPATH="./:$PYTHONPATH" python video_chatgpt/eval/run_inference_tomloc_qa.py \
    --model-name ${HOME}/checkpoint-3800/ \
    --video_dir data/tomloc/video_merged_n3 \
    --gt_file_qa data/tomloc/qa/tomloc_eval_loo_removed_merged_n3_with_frames_idx_instruction.json \
    --output_dir data/tomloc/output \
    --output_name video_chatgpt_tomloc_qa_preds_test_loo \
    --loo_mm_projector_path "mm_projector_vid=['_71jULUUQhg+_AuZO31q62g+_CuZqXrhEZI']_qid_val=TODO_frame_idx=frame_idx_0.pt"


PYTHONPATH="./:$PYTHONPATH" python quantitative_evaluation/evaluate_tomloc_qa.py \
    --pred_path data/tomloc/output/video_chatgpt_tomloc_qa_preds_val_loo.json \
    --output_dir data/tomloc/output \
    --output_json data/tomloc/output/video_chatgpt_tomloc_qa_results_test_loo.json \
    --num_tasks 1

(vtom) azureuser@vtom-a100-x4-n1:~/vtom$ PYTHONPATH="./:$PYTHONPATH" python quantitative_evaluation/evaluate_tomloc_qa.py \
>     --pred_path data/tomloc/output/video_chatgpt_tomloc_qa_preds_val_loo.json \
>     --output_dir data/tomloc/output \
>     --output_json data/tomloc/output/video_chatgpt_tomloc_qa_results_test_loo.json \
>     --num_tasks 1
completed_files: 1
incomplete_files: 295
completed_files: 296
incomplete_files: 0
All evaluation completed!
Yes count: 230
No count: 65
Accuracy: 0.7796610169491526
Average score: 0.7796610169491526
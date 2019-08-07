## Nvidia GPU usage

To be able to use an Nvidia GPU in a container, use [nvidia-docker](https://github.com/NVIDIA/nvidia-docker#quickstart). We also use a base image which enables CUDA and CuDNN. Verify that the GPU is available inside the container with `nvidia-smi`.


#!/usr/bin/env sh

if [[ `uname` == 'Linux' ]]; then
  CUDA_VERSION=7-5
  CUDA_URL=http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.5-18_amd64.deb
  CUDA_FILE=/tmp/cuda_install.deb

  curl $CUDA_URL -o $CUDA_FILE
  dpkg -i $CUDA_FILE
  rm -f $CUDA_FILE
  apt-get -y update
  apt-get -y install \
    cuda-core-${CUDA_VERSION} \
    cuda-cublas-${CUDA_VERSION} \
    cuda-cublas-dev-${CUDA_VERSION} \
    cuda-cudart-${CUDA_VERSION} \
    cuda-cudart-dev-${CUDA_VERSION} \
    cuda-curand-${CUDA_VERSION} \
    cuda-curand-dev-${CUDA_VERSION} \
    cuda-cusparse-${CUDA_VERSION} \
    cuda-cusparse-dev-${CUDA_VERSION}
  ln -s /usr/local/cuda-${CUDA_VERSION} /usr/local/cuda
fi

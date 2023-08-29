#!/bin/bash
#
# This is a build script for DSP-SLAM.
#
# Use parameters:
# `--install-cuda` to install the NVIDIA CUDA suite
#
# Example:
#   ./build_cuda113.sh --install-cuda --build-dependencies --create-conda-env
#
#   which will
#   1. Install some system dependencies
#   2. Install CUDA-11.3 under /usr/local
#   3. Create and build:
#   - ./Thirdparty/opencv
#   - ./Thirdparty/eigen
#   - ./Thirdparty/Pangolin
#   4. Build:
#   - ./Thirdparty/g2o
#   - ./Thirdparty/DBoW2
#   5. Create conda env with PyTorch 1.10
#   6. Install mmdetection and mmdetection3d
#   7. Build DSP-SLAM

# Function that executes the clone command given as $1 iff repo does not exist yet. Otherwise pulls.
# Only works if repository path ends with '.git'
# Example: git_clone "git clone --branch 3.4.1 --depth=1 https://github.com/opencv/opencv.git"
function git_clone(){
  repo_dir=`basename "$1" .git`
  git -C "$repo_dir" pull 2> /dev/null || eval "$1"
}

source Thirdparty/bashcolors/bash_colors.sh
function highlight(){
  clr_magentab clr_bold clr_white "$1"
}

highlight "Starting DSP-SLAM build script ..."
echo "Available parameters:
        --install-cuda
        --build-dependencies
        --create-conda-env"



  highlight "Installing OpenCV ..."
  cd Thirdparty
  git_clone "git clone --branch 3.4.1 --depth=1 https://github.com/opencv/opencv.git"
  cd opencv
  if [ ! -d build ]; then
    mkdir build
  fi
  cd build
  cmake \
      -DCMAKE_BUILD_TYPE=Release \
      -DWITH_CUDA=OFF  \
      -DBUILD_DOCS=OFF  \
      -DBUILD_PACKAGE=OFF \
      -DBUILD_TESTS=OFF  \
      -DBUILD_PERF_TESTS=OFF  \
      -DBUILD_opencv_apps=OFF \
      -DBUILD_opencv_calib3d=ON  \
      -DBUILD_opencv_cudaoptflow=OFF  \
      -DBUILD_opencv_dnn=OFF  \
      -DBUILD_opencv_dnn_BUILD_TORCH_IMPORTER=OFF  \
      -DBUILD_opencv_features2d=ON \
      -DBUILD_opencv_flann=ON \
      -DBUILD_opencv_java=ON  \
      -DBUILD_opencv_objdetect=ON  \
      -DBUILD_opencv_python2=OFF  \
      -DBUILD_opencv_python3=OFF  \
      -DBUILD_opencv_photo=ON \
      -DBUILD_opencv_stitching=ON  \
      -DBUILD_opencv_superres=ON  \
      -DBUILD_opencv_shape=ON  \
      -DBUILD_opencv_videostab=OFF \
      -DBUILD_PROTOBUF=OFF \
      -DWITH_1394=OFF  \
      -DWITH_GSTREAMER=OFF  \
      -DWITH_GPHOTO2=OFF  \
      -DWITH_MATLAB=OFF  \
      -DWITH_NVCUVID=OFF \
      -DWITH_OPENCL=OFF \
      -DWITH_OPENCLAMDBLAS=OFF \
      -DWITH_OPENCLAMDFFT=OFF \
      -DWITH_TIFF=OFF  \
      -DWITH_VTK=OFF  \
      -DWITH_WEBP=OFF  \
      ..
  make -j8
  OpenCV_DIR=$(pwd)
  cd ../..

  highlight "Installing Eigen3 ..."
  git_clone "git clone --branch=3.4.0 --depth=1 https://gitlab.com/libeigen/eigen.git"
  cd eigen
  if [ ! -d build ]; then
    mkdir build
  fi
  if [ ! -d install ]; then
    mkdir install
  fi
  cd build
  cmake -DCMAKE_INSTALL_PREFIX="$(pwd)/../install" ..
  make -j8
  make install
  cd ../..

  highlight "Installing Pangolin ..."
  git_clone "git clone --recursive --depth=1 https://github.com/stevenlovegrove/Pangolin.git"
  cd Pangolin
  if [ ! -d build ]; then
    mkdir build
  fi
  cd build
  cmake ..
  make -j8
  Pangolin_DIR=$(pwd)
  cd ../..

highlight "Installing g2o ..."
  cd g2o
  if [ ! -d build ]; then
    mkdir build
  fi
  cd build
  cmake -DEigen3_DIR="$(pwd)/../../eigen/install/share/eigen3/cmake" ..
  make -j8
  cd ../..

  highlight "Installing DBoW2 ..."
  cd DBoW2
  if [ ! -d build ]; then
    mkdir build
  fi
  cd build
  cmake -DOpenCV_DIR=$OpenCV_DIR ..
  make -j8
  cd ../../..

highlight "building DSP-SLAM ..."
if [ ! -d build ]; then
  mkdir build
fi
cd build
cmake \
  -DOpenCV_DIR="$(pwd)/../Thirdparty/opencv/build" \
  -DEigen3_DIR="$(pwd)/../Thirdparty/eigen/install/share/eigen3/cmake" \
  -DPangolin_DIR="$(pwd)/../Thirdparty/Pangolin/build" \
  ..
make -j8


cd ..
cd build
# cmake .. -DCMAKE_BUILD_TYPE=Release
make -j20
cd ..
cd Examples


./Monocular/mono_camera ../Vocabulary/ORBvoc.txt ./Monocular/camera.yaml 0 0
# ./Monocular/mono_video ../Vocabulary/ORBvoc.txt ./Monocular/video_1_0.yaml /home/jiho/slam/ORB_SLAM3_test/DataSets/videos/test_0_1_0.mp4

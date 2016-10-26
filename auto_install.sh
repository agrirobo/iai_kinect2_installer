echo "CAPTION: This script for intel GPU & ubuntu 16.04"
echo "You can ctrl+C to kill me. if ok, press Enter."
read buf
topDir=`pwd`
echo "apt-get updating"
sudo apt-get update
echo "Build tools installation"
sudo apt-get install build-essential cmake pkg-config
echo "The section of libfreenect2 installation"
cd libfreenect2
echo "Requirements installation (on libfreenect2)"
sudo apt-get install libusb-1.0-0-dev libturbojpeg libjpeg-turbo8-dev libglfw3-dev beignet-dev libva-dev libopenni2-dev
echo "libfreenect2 installation"
mkdir build && cd build
cmake .. -DENABLE_CXX11=ON
make
sudo make install
sudo cp ../platform/linux/udev/90-kinect2.rules /etc/udev/rules.d/
echo "finish installation of libfreenect2"
cd $topDir

#!/bin/sh
dataDir=../src/iai_kinect2/kinect2_bridge/data/004521253647
if [ -e $dataDir ] ; then
   echo "OverRiding current...OK? #@#@ !!Deleting Current!! 3@#@"
   
else mkdir ../src/iai_kinect2/kinect2_bridge/data/004521253647
fi

#cp ./kinect_v2_serial:004521253647@yasu:vostro3546/calib* ../src/iai_kinect2/kinect2_bridge/data/004521253647/.
cp -i ./kinect_v2_serial:004521253647@yasu:vostro3546/calib* "$dataDir/."

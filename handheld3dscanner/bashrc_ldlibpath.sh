#!/bin/bash -e

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/lib:/usr/local/lib:/opt/ros/kinetic/lib:/usr/lib/arm-linux-gnueabihf

if ! grep -q 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib:/usr/local/lib:/opt/ros/kinetic/lib:/usr/lib/arm-linux-gnueabihf' ~/.bashrc ; then
	echo "adding LD_LIBRARY_PATH to .bashrc"
	echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib:/usr/local/lib:/opt/ros/kinetic/lib:/usr/lib/arm-linux-gnueabihf' >> ~/.bashrc
else
	echo "already found LD_LIBRARY_PATH inside .bashrc"
fi
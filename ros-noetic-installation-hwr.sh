#!/bin/sh
# update & upgrade #
sudo apt-get update
sudo apt-get upgrade
# add custom sources and PPA's #
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
# ubuntuzilla
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# update
sudo apt update
# Desktop-Full Install: (Recommended)
sudo apt install ros-noetic-desktop-full
# Environment Setup
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
# Dependencies for building packages
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
#initialize rosdep
sudo apt install python3-rosdep
sudo rosdep init
rosdep update
sudo reboot

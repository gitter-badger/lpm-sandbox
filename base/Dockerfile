FROM debian:jessie

MAINTAINER Maintaner Péricles Lopes Machado (gogo40)

# Update apt-get
RUN apt-get -y update

# Install base packages
RUN apt-get install -y g++ cmake git make 
RUN apt-get install -y libboost-all-dev cmake-gui 
RUN apt-get install -y supervisor openssh-server 
RUN apt-get install -y gedit wget bash libfftw3-dev 
RUN apt-get install -y x11-apps flex bison 
RUN apt-get install -y libgl1-mesa-swx11-dev libglu1-mesa-dev 
RUN apt-get install -y libxt-dev libpulse-dev 
RUN apt-get install -y gstreamer0.10 libgstreamer-plugins-base0.10-0 xvfb 

# Setup a password
ENV DISPLAY :0

ENV QT_X11_NO_MITSHM 1

# clone repositories

RUN git clone https://github.com/Kitware/VTK.git

WORKDIR /
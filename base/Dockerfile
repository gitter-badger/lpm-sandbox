FROM debian:jessie

MAINTAINER Maintaner Péricles Lopes Machado (gogo40)

# Install base packages
RUN apt-get install -qqy g++ cmake git make 
RUN apt-get install -qqy libboost-all-dev cmake-gui 
RUN apt-get install -qqy supervisor openssh-server 
RUN apt-get install -qqy gedit wget bash libfftw3-dev 
RUN apt-get install -qqy x11-apps flex bison 
RUN apt-get install -qqy libgl1-mesa-swx11-dev libglu1-mesa-dev 
RUN apt-get install -qqy libxt-dev libpulse-dev 
RUN apt-get install -qqy gstreamer0.10 libgstreamer-plugins-base0.10-0 xvfb 

# Setup a password
ENV DISPLAY :0

ENV QT_X11_NO_MITSHM 1

# download qt5-online installer
RUN wget http://download.qt.io/official_releases/online_installers/qt-opensource-linux-x64-online.run
RUN chmod 777 qt-opensource-linux-x64-online.run

# RUN ./qt-opensource-linux-x64-online.run

# clone repositories

RUN git clone https://github.com/Kitware/VTK.git
#RUN git clone https://github.com/gogo40/ar2gems.git 
#RUN git clone https://github.com/gogo40/lpm-ufrgs-sgems-plugins.git

RUN mkdir ar2gems-build
RUN mkdir lpm-ufrgs-sgems-plugins-build
RUN mkdir vtk-build

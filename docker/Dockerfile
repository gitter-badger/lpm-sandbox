FROM debian:jessie

MAINTAINER Maintaner Péricles Lopes Machado (gogo40)

# Update image
RUN apt-get update

RUN apt-get -qqy upgrade
RUN apt-get -qqy dist-upgrade

# Install base packages
RUN apt-get install -qqy g++ cmake git make libboost-all-dev cmake-gui supervisor openssh-server gedit wget bash libfftw3-dev x11-apps flex bison libgl1-mesa-dev libglu1-mesa-dev libxt-dev libpulse-dev gstreamer1.0 libgstreamer-plugins-base1.0-0 gstreamer0.10 libgstreamer-plugins-base0.10-0 x11vnc xvfb 
RUN mkdir ~/.vnc


# Setup a password
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd

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

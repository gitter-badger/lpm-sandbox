FROM debian:jessie

MAINTAINER Maintaner Péricles Lopes Machado (gogo40)

# Update image
RUN apt-get update

RUN apt-get -y upgrade
RUN apt-get -y dist-upgrade

# Install base packages
RUN apt-get install -y g++ cmake git make libboost-all-dev cmake-gui supervisor openssh-server gedit wget bash
RUN apt-get install -qqy x11-apps flex bison

RUN apt-get install -y x11vnc xvfb 
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


#################################################################################################
#how to delete all containers and images
# Delete all containers
#docker rm $(docker ps -a -q)
# Delete all images
#docker rmi $(docker images -q)

#Instructions to create docker image 
#sudo docker build -t gogo40/lpm_sandbox - << __EOF__

#Intructions to run docker image opening bash
#sudo docker run -t -i gogo40/lpm_sandbox /bin/bash


#sudo docker run -p 5900 gogo40/lpm_sandbox x11vnc -forever -usepw -create

#Intructions to run opening X server
#./run_docker.sh

#####################################################################################################
# EXPOSE X SERVER

#With docker data volumes it's very easy to expose xorg's unix domain socket inside the container.

#For example, with a Dockerfile like this:

#FROM debian
#RUN apt-get update
#RUN apt-get install -qqy x11-apps
#ENV DISPLAY :0
#CMD xeyes
#You could do the following:

#$ docker build -t xeyes - < Dockerfile
#$ XSOCK=/tmp/.X11-unix/X0
#$ docker run -v $XSOCK:$XSOCK xeyes


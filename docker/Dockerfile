# use sudo docker build -t gogo40/lpm_sandbox .

FROM debian:jessie

MAINTAINER Maintaner Péricles Lopes Machado (gogo40)

# Set root passwd 
RUN echo "root:test" | chpasswd

# Add user so that container does not run as root 
RUN useradd -m docker 
RUN echo "docker:test" | chpasswd 
RUN usermod -s /bin/bash docker 
RUN usermod -aG sudo docker 
ENV HOME /home/docker

# Update image
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y dist-upgrade
RUN apt-get install -y g++ cmake git make libboost-all-dev cmake-gui supervisor sshd


RUN mkdir /var/run/sshd 
RUN mkdir -p /var/log/supervisor

# copy servisord.conf which lists the processes to be spawned once this 
# container is started (currently only one: sshd) 
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22 
CMD ["/usr/bin/supervisord"]

USER docker

#docker run -d -p 127.0.0.1:5000:22 -h ubuntu-r -v /home/chb/files/Data:/home/docker/Data -P --name="rdev" ubuntu-r
#docker run -d -p 127.0.0.1:5000:22 -h gogo40/lpm_sandbox  -P  gogo40/lpm_sandbox

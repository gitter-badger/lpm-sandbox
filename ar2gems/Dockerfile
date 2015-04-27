FROM gogo40/lpm-sandbox:base

#Add main files
ADD ar2gems.zip /
ADD lpm-ufrgs-sgems-plugins.zip /
ADD install_plugins /ar2gems-build

#Upgrade image
RUN apt-get -y update
RUN apt-get -y upgrade

#Install unzip
RUN apt-get -y install unzip


#Unzip source codes
RUN unzip ar2gems.zip
RUN unzip lpm-ufrgs-sgems-plugins.zip

RUN ls

#build VTK
WORKDIR VTK

RUN ls

#build ar2gems
#WORKDIR ar2gems
#RUN

#build lpm-ufrgs-sgems-plugins
#WORKDIR lpm-ufrgs-sgems-plugins
#RUN
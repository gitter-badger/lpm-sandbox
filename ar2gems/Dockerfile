FROM gogo40/lpm-sandbox:base

ADD ar2gems.zip /
ADD lpm-ufrgs-sgems-plugins.zip /

RUN apt-get -y update
RUN apt-get -y install unzip

RUN unzip ar2gems.zip
RUN unzip lpm-ufrgs-sgems-plugins.zip

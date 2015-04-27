FROM gogo40/lpm-sandbox:base

#Add main files
ADD ar2gems.zip /
ADD lpm-ufrgs-sgems-plugins.zip /
ADD install_plugins.sh /ar2gems-build/

#Upgrade image
RUN apt-get -y update
RUN apt-get -y upgrade

#Install unzip
RUN apt-get -y install unzip

#Install qt5 libraries
RUN apt-get -y install \
qtbase5-dev \
qt5-qmake \
qttools5-dev \
qtbase5-dev-tools \
qttools5-dev-tools \
libqt5widgets5 \
libqt5designer5 \
libqt5designercomponents5 \
libqt5gui5 \
libqt5webkit5-dev 


#Unzip source codes
RUN unzip ar2gems.zip
RUN unzip lpm-ufrgs-sgems-plugins.zip

RUN echo "Number of processors" && echo $(nproc)

#build VTK
WORKDIR vtk-build

RUN cmake /VTK -DCMAKE_BUILD_TYPE:STRING=Release -DBUILD_TESTING:BOOL=OFF -DVTK_Group_Qt:BOOL=ON \
-DVTK_Group_Imaging:BOOL=ON \
-DVTK_Group_Rendering:BOOL=ON \
-DVTK_Group_StandAlone:BOOL=ON \
-DVTK_Group_Views:BOOL=ON \
-DVTK_QT_VERSION:STRING=5 \
-DVTK_RENDERING_BACKEND:STRING=OpenGL


RUN make -j $(nproc)

#build ar2gems
WORKDIR ar2gems-build
#RUN

#build lpm-ufrgs-sgems-plugins
WORKDIR lpm-ufrgs-sgems-plugins-build
#RUN


WORKDIR /

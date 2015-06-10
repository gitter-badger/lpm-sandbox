FROM gogo40/lpm-sandbox:base

########################################################################################
#Add source code files
########################################################################################

ADD ar2gems.zip /
ADD lpm-ufrgs-sgems-plugins.zip /

########################################################################################
#Upgrade image
########################################################################################

RUN apt-get -y update
RUN apt-get -y upgrade

########################################################################################
#Install unzip
########################################################################################

RUN apt-get -y install unzip

########################################################################################
#Install qt5 libraries
########################################################################################

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
libqt5webkit5-dev \
libqt5svg5

########################################################################################
#Unzip source codes
########################################################################################

RUN unzip ar2gems.zip
RUN unzip lpm-ufrgs-sgems-plugins.zip

RUN echo "Number of processors" && echo $(nproc)

########################################################################################
#Create build directories
########################################################################################

RUN mkdir -p ar2gems-build
RUN mkdir -p lpm-ufrgs-sgems-plugins-build
RUN mkdir -p vtk-build

########################################################################################
#build VTK
########################################################################################

WORKDIR VTK

RUN git checkout v6.2.0.rc1

WORKDIR vtk-build

RUN cd /vtk-build && \
cmake /VTK -DCMAKE_BUILD_TYPE:STRING=Release \
-DBUILD_TESTING:BOOL=OFF \
-DVTK_Group_Qt:BOOL=ON \
-DVTK_Group_Imaging:BOOL=ON \
-DVTK_Group_Rendering:BOOL=ON \
-DVTK_Group_StandAlone:BOOL=ON \
-DVTK_Group_Views:BOOL=ON \
-DVTK_QT_VERSION:STRING=5 \
-DVTK_RENDERING_BACKEND:STRING=OpenGL


RUN cd /vtk-build && \
make -j 4

RUN cd /vtk-build && \
make install

########################################################################################
#build ar2gems
########################################################################################

RUN apt-get -y install \
libqt5svg5-dev \
qtmultimedia5-dev \
libqt5multimedia5 \
qtcreator

WORKDIR /ar2gems

RUN cd /ar2gems 

WORKDIR ar2gems-build

RUN cd /ar2gems-build && \
cmake /ar2gems -DCMAKE_BUILD_TYPE:STRING=Release 

RUN cd /ar2gems-build && \
make -j 4

########################################################################################
#build lpm-ufrgs-sgems-plugins
########################################################################################

WORKDIR /lpm-ufrgs-sgems-plugins

RUN cd /lpm-ufrgs-sgems-plugins && \
cd CALCULATOR && \
bison Parser.y && \
flex Lexer.l

WORKDIR /lpm-ufrgs-sgems-plugins-build

RUN cd /lpm-ufrgs-sgems-plugins-build && \
cmake /lpm-ufrgs-sgems-plugins -DCMAKE_BUILD_TYPE:STRING=Release \
-DAR2GEMS_BUILD_PATH:PATH=/ar2gems-build \
-DAR2GEMS_PATH:PATH=/ar2gems \
-DAR2GEMS_SOURCE_PATH:PATH=/ar2gems \
-DAR2GEMS_INCLUDE_DIR:PATH=/ar2gems \
-DBISON_EXECUTABLE:FILEPATH=/usr/bin/bison \
-DFLEX_EXECUTABLE:FILEPATH=/usr/bin/flex \
-DFLEX_INCLUDE_DIR:PATH=/usr/include

RUN cd /lpm-ufrgs-sgems-plugins-build && \
make -j 4

#Install plugins
WORKDIR /ar2gems-build

ADD install_plugins.sh /ar2gems-build/

RUN cd /ar2gems-build && \
mkdir Release/bin/plugins

RUN cd /ar2gems-build && \
mkdir Release/bin/plugins/designer

RUN cd /ar2gems-build && \
mkdir Release/bin/plugins/Geostat

RUN cd /ar2gems-build && \
./install_plugins.sh

ADD ar2gems /usr/bin/
ADD ar2gems_com /usr/bin/

WORKDIR /


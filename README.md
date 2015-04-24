# lpm-sandbox
This repository contains a basic environment to implement geo-statistics algorithms in Linux.

In this image, you can found:

Development tools
-----------------------

* VTK-6.2
* cmake + cmake-gui
* g++
* flex
* bison
* python-2.7-dev
* boost
* eigen
* git
* gedit - a graphical text editor
* qt-5.4

Geostatistics softwares
----------------------------

* sgems (with lpm_ufrgs_plugins)
* gslib
* isatis


Docker container
----------------

The Linux distribution used is Debian Jessie. The dockerfile is based on debian “quasi-official” version (https://registry.hub.docker.com/_/debian/).


You can pull our current container version  (gogo40/ar2gems_develop) using:

```
$ docker pull gogo40/ar2gems_develop
```

But, you can create a new image using the script docker/build_docker.sh. And, you can run the image using the script docker/run_docker.sh. The image created is called 'gogo40/lpm_sandbox'.

Running a specific softwares
----------------------------

* AR2GEMS:

```
$cd docker
$./run_docker.sh ar2gems
```

* QT CREATOR:

```
$cd docker
$./run_docker.sh qtcreator
```

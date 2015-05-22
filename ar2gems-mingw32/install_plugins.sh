#!/bin/bash

cp -rf ../ar2gems/plugins/* Release/bin/plugins/
cp Release/lib/libar2gems_widgets.so Release/bin/plugins/designer/
cp -rf ../lpm-ufrgs-sgems-plugins/*/*.ui Release/bin/plugins/Geostat/
cp -rf ../lpm-ufrgs-sgems-plugins-build/*/*.so Release/bin/plugins/Geostat/



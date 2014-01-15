 #!/bin/sh

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu raring main" > /etc/apt/sources.list.d/ros-latest.list'

wget http://packages.ros.org/ros.key -O - | sudo apt-key add -

sudo apt-get update

sudo apt-get install shiboken
sudo apt-get install ros-hydro-qt-gui-core

gdb --args /usr/bin/shiboken --generatorSet=shiboken --include-paths=./include-paths::/usr/include/qt4 --typesystem-paths=/usr/share/PySide/typesystems --output-directory=./out global.h typesystem.xml

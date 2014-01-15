#!/bin/sh

#gdb --args
/usr/bin/shiboken --generatorSet=shiboken --include-paths=./include::/usr/include/qt4 --typesystem-paths=/usr/share/PySide/typesystems --output-directory=./out global.h typesystem.xml


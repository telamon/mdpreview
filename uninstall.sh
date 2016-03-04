#!/bin/sh -x

INSTALL_PATH=
[ -z "$INSTALL_PATH" ] && INSTALL_PATH=/usr/local

rm $INSTALL_PATH/bin/mdpreview
rm $INSTALL_PATH/lib/mdpreview -rf

#!/bin/sh -x

[ -z "$INSTALL_PATH" ] && INSTALL_PATH=/usr/local

mkdir -p $INSTALL_PATH/lib/mdpreview
mkdir -p $INSTALL_PATH/bin
cp mdpreview $INSTALL_PATH/lib/mdpreview
cp -ar themes $INSTALL_PATH/lib/mdpreview
ln -s $INSTALL_PATH/lib/mdpreview/mdpreview $INSTALL_PATH/bin

sed "s|^INSTALL_PATH=$|INSTALL_PATH=$INSTALL_PATH|" uninstall.sh > $INSTALL_PATH/lib/mdpreview/uninstall.sh
chmod 755 $INSTALL_PATH/lib/mdpreview/uninstall.sh

set +x
echo
echo "$INSTALL_PATH/lib/mdpreview/uninstall.sh to uninstall"
echo

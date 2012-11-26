#!/bin/sh
#
# install ibus configure for user
#
if [ -z $1 ]; then
    USER_NAME=$USER
else
    USER_NAME=$1
fi
USER_HOME=`grep "^$USER_NAME:" /etc/passwd | cut -d : -f 6`

XORG_CONFIG_PATH='.config/xorg/xclient.d/'
install -d -o $USER_NAME -m 755 $USER_HOME/.config/xorg
install -d -o $USER_NAME -m 755 $USER_HOME/.config/xorg/xclient.d
install -o $USER_NAME -m 755 /usr/local/share/examples/ibus-conf/input-method-setting $USER_HOME/$XORG_CONFIG_PATH

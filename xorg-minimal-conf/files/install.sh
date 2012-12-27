#!/bin/sh
#
# install openbox configure for user
#
if [ -z $1 ]; then
    USER_NAME=$USER
else
    USER_NAME=$1
fi
USER_HOME=`grep "^$USER_NAME:" /etc/passwd | cut -d : -f 6`

XORG_CONFIG_PATH='.config/xorg/xserver.d/'
install -d -o $USER_NAME -m 755 $USER_HOME/.config
install -d -o $USER_NAME -m 755 $USER_HOME/.config/xorg
install -d -o $USER_NAME -m 755 $USER_HOME/.config/xorg/xserver.d
install -o $USER_NAME -m 755 /usr/local/share/examples/xorg-minimal-conf/language-setting $USER_HOME/$XORG_CONFIG_PATH

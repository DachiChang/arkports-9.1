#!/bin/sh
#
# install wallpaper configure for user
#
if [ -z $1 ]; then
    USER_NAME=$USER
else
    USER_NAME=$1
fi
USER_HOME=`grep "^$USER_NAME:" /etc/passwd | cut -d : -f 6`

CONFIG_PATH='.config/wallpaper'
install -d -o $USER_NAME -m 755 $USER_HOME/.config
install -d -o $USER_NAME -m 755 $USER_HOME/.config/wallpaper
install -o $USER_NAME -m 644 /usr/local/share/examples/wallpaper-conf/background.jpg $USER_HOME/$CONFIG_PATH

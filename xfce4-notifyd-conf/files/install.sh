#!/bin/sh
#
# install xfce4-notifyd configure for user
#
if [ -z $1 ]; then
    USER_NAME=$USER
else
    USER_NAME=$1
fi
USER_HOME=`grep "^$USER_NAME:" /etc/passwd | cut -d : -f 6`

CONFIG_PATH='.config/xfce4/xfconf/xfce-perchannel-xml/'
install -d -o $USER_NAME -m 755 $USER_HOME/.config
install -d -o $USER_NAME -m 755 $USER_HOME/.config/xfce4
install -d -o $USER_NAME -m 755 $USER_HOME/.config/xfce4/xfconf
install -d -o $USER_NAME -m 755 $USER_HOME/.config/xfce4/xfconf/xfce-perchannel-xml
install -o $USER_NAME -m 644 /usr/local/share/examples/xfce4-notifyd-conf/xfce4-notifyd.xml $USER_HOME/$CONFIG_PATH

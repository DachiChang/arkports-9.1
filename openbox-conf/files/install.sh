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

CONFIG_PATH='.config/openbox/'
install -d -o $USER_NAME -m 755 $USER_HOME/.config
install -d -o $USER_NAME -m 755 $USER_HOME/.config/openbox
install -o $USER_NAME -m 644 /usr/local/share/examples/openbox-conf/rc.xml $USER_HOME/$CONFIG_PATH
install -o $USER_NAME -m 644 /usr/local/share/examples/openbox-conf/menu.xml $USER_HOME/$CONFIG_PATH
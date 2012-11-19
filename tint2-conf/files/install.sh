#!/bin/sh
#
# install tint2 configure for user
#
if [ -z $1 ]; then
    USER_NAME=$USER
else
    USER_NAME=$1
fi
USER_HOME=`grep "^$USER_NAME:" /etc/passwd | cut -d : -f 6`

CONFIG_PATH='.config/tint2/'
install -d -o $USER_NAME -m 755 $USER_HOME/.config
install -d -o $USER_NAME -m 755 $USER_HOME/.config/tint2
install -o $USER_NAME -m 644 /usr/local/share/examples/tint2-conf/panel.rc $USER_HOME/$CONFIG_PATH

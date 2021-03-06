#!/bin/sh
#
# install gpicview configure for user
#
if [ -z $1 ]; then
    USER_NAME=$USER
else
    USER_NAME=$1
fi
USER_HOME=`grep "^$USER_NAME:" /etc/passwd | cut -d : -f 6`

CONFIG_PATH='.config/gpicview'
install -d -o $USER_NAME -m 755 $USER_HOME/.config
install -d -o $USER_NAME -m 755 $USER_HOME/.config/gpicview
install -o $USER_NAME -m 644 /usr/local/share/examples/gpicview-conf/gpicview.conf $USER_HOME/$CONFIG_PATH

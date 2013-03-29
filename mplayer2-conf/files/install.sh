#!/bin/sh
#
# install mplayer2 configure for user
#
if [ -z $1 ]; then
    USER_NAME=$USER
else
    USER_NAME=$1
fi
USER_HOME=`grep "^$USER_NAME:" /etc/passwd | cut -d : -f 6`

CONFIG_PATH='.mplayer/'
install -d -o $USER_NAME -m 755 $USER_HOME/.mplayer
install -o $USER_NAME -m 644 /usr/local/share/examples/mplayer2-conf/config $USER_HOME/$CONFIG_PATH

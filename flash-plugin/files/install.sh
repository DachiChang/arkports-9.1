#!/bin/sh
#
# install flash-plugin configure for user
#
if [ -z $1 ]; then
    USER_NAME=$USER
else
    USER_NAME=$1
fi
USER_HOME=`grep "^$USER_NAME:" /etc/passwd | cut -d : -f 6`

CONFIG_PATH='.mozilla/plugins'
install -d -o $USER_NAME -m 755 $USER_HOME/.mozilla
if [ ! -L $USER_HOME/$CONFIG_PATH ]; then
    ln -s /usr/local/lib/browser_plugins $USER_HOME/$CONFIG_PATH
    chown -h $USER_NAME $USER_HOME/$CONFIG_PATH
fi

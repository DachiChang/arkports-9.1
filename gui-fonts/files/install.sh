#!/bin/sh
#
# install fonts configure for user
#
if [ -z $1 ]; then
    USER_NAME=$USER
else
    USER_NAME=$1
fi
USER_HOME=`grep "^$USER_NAME:" /etc/passwd | cut -d : -f 6`
install -o $USER_NAME -m 644 /usr/local/share/examples/gui-fonts/fonts.conf $USER_HOME/.fonts.conf

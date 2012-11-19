#!/bin/sh
#
# install webcamd configure for user
#
if [ -z $1 ]; then
    USER_NAME=$USER
else
    USER_NAME=$1
fi

pw groupmod webcamd -m $USER_NAME

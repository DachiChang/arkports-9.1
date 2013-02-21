#!/bin/sh
#
# install vim configure for user
#
if [ -z $1 ]; then
    USER_NAME=$USER
else
    USER_NAME=$1
fi
USER_HOME=`grep "^$USER_NAME:" /etc/passwd | cut -d : -f 6`

install -d -o $USER_NAME -m 755 $USER_HOME/.vim
install -d -o $USER_NAME -m 755 $USER_HOME/.vim/colors
install -o $USER_NAME -m 644 /usr/local/share/examples/vim-conf/vimrc $USER_HOME/.vimrc
install -o $USER_NAME -m 644 /usr/local/share/examples/vim-conf/vim/colors/molokai.vim $USER_HOME/.vim/colors/

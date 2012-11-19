#!/bin/sh
#
# install firefox default configure for user
#
if [ -z $1 ]; then
    USER_NAME=$USER
else
    USER_NAME=$1
fi
USER_HOME=`grep "^$USER_NAME:" /etc/passwd | cut -d : -f 6`

FIREFOX_USER_PATH='.mozilla/firefox'
FIREFOX_CONFIG_PATH='.mozilla/firefox/profiles.default/chrome'
install -d -o $USER_NAME -m 755 $USER_HOME/.mozilla
install -d -o $USER_NAME -m 755 $USER_HOME/.mozilla/firefox
install -d -o $USER_NAME -m 755 $USER_HOME/.mozilla/firefox/profiles.default
install -d -o $USER_NAME -m 755 $USER_HOME/.mozilla/firefox/profiles.default/chrome
install -o $USER_NAME -m 644 /usr/local/share/examples/firefox-conf/profiles.ini $USER_HOME/$FIREFOX_USER_PATH
install -o $USER_NAME -m 644 /usr/local/share/examples/firefox-conf/userContent.css $USER_HOME/$FIREFOX_CONFIG_PATH

#!/bin/sh
#
# install openbox configure for user
#
update_config_file() {
    if [ ! -f $1 ]; then
        echo "# Begin of $3 settings" >> $1
        cat $2 >> $1
        echo "# End of $3 settings" >> $1
    else
        if ! grep "$3" $1 > /dev/null 2>&1; then
            echo "# Begin of $3 settings" >> $1
            cat $2 >> $1
            echo "# End of $3 settings" >> $1
        fi
    fi
    chown -f $USER_NAME $1
    chmod 644 $1
}

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
install -o $USER_NAME -m 644 /usr/local/share/examples/openbox-conf/startup.wav $USER_HOME/$CONFIG_PATH
install -o $USER_NAME -m 755 /usr/local/share/examples/openbox-conf/autostart $USER_HOME/$CONFIG_PATH
install -o $USER_NAME -m 644 /usr/local/share/examples/openbox-conf/xinitrc $USER_HOME/.xinitrc
install -d -o $USER_NAME -m 755 $USER_HOME/.config/xorg
update_config_file $USER_HOME/.config/xorg/xclient-setting /usr/local/share/examples/openbox-conf/locale_setting 'openbox-conf'

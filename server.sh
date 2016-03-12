#!/bin/bash


dir="$(dirname "$0")"

source $dir/functions/functions/server

function thirdparty {
    eval `resize`
    THIRDPARTY=$(whiptail \
        --notags \
        --title "Server Installation" \
        --menu "\nWhat third-party software would you like to install?" \
        --ok-button "Install" \
        --cancel-button "Go Back" \
        $LINES $COLUMNS $(( $LINES - 12 )) \
        'server'            'Basic Server Setup' \
        3>&1 1>&2 2>&3)
     
    exitstatus=$?
    if [ $exitstatus = 0 ]; then
        clear && $THIRDPARTY
    else
        clear && main
    fi
}

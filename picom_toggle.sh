#!/bin/sh

if [ -f $HOME/.config/i3/picom.lock ]; then
    killall picom;
    rm $HOME/.config/i3/picom.lock;
    rm $HOME/.config/i3/nohup.out
else
    nohup picom &
    touch $HOME/.config/i3/picom.lock;
    rm $HOME/.config/i3/nohup.out
fi

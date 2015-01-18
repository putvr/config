export TERM=xfce4-terminal
export SHELL=zsh
export EDITOR=mg
export DE=xfce4

/usr/bin/VBoxClient-all
setxkbmap -layout us,ru -option  "grp:ctrl_shift_toggle,grp_led:scroll" -variant ",winkeys"
exec i3

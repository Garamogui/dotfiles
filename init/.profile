. "$HOME/.cargo/env"

nohup dunst &

xset r rate 300 50 &
greenclip daemon &
notify-send "Welcome back, $(whoami)!" --icon=dialog-information &
$HOME/Scripts/wal-restore &
$HOME/Scripts/launch-borders &
nohup autotiling &

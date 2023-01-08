# configure monitors
#xrandr --output DVI-D-0 --mode 1920x1080 --pos 4480x0 --rotate left --output HDMI-0 --mode 1920x1080 --pos 0x703 --rotate normal --output DP-0 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --primary --mode 2560x1440 --rate 131 --pos 1920x72 --rotate normal --output DP-5 --off

# set wallpaper
#feh --bg-tile /home/mogu/pics/alien.jpg
#feh --bg-tile /home/mogu/pics/vanil.jpg
feh --bg-max --image-bg=#3a8bb0 ~/pics/empty.png
#feh --bg-max --image-bg=#000000 ~/pics/empty.png
#dyn-wall-rs -d ~/pics/cycle_wide &

# enable tablet
xsetwacom set 'Wacom Intuos S 2 Pen stylus' MapToOutput 2560x1440+1920+72

# enable compositor
picom -b --experimental-backends

# set the key input delay/speed
xset r rate 250 25

# start windowmanager, should be last command to execute
#exec ~/.scripts/startdwm
#exec dwm
exec bspwm
#exec stumpwm

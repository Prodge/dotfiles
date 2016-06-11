# Setting keyboard repeat rate
xset r rate 300 40 &

# Set keyboard layout to dvorak
exec setxkbmap us -variant dvp &

# Set screen layout
sh ~/.screenlayout/og-main-left-portrait.sh &

# Clear user tmp folder
rm -rf tmp/* &

# Starting autokey
#autokey &

# Starting conky
#conky &

# Setting background
xsetroot -solid "#000000" &
#xloadimage -onroot -fullscreen ~/Downloads/bg.jpg

# Start xmonad
exec xmonad

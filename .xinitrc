# Setting keyboard repeat rate
xset r rate 300 40 &

# Set keyboard layout to dvorak
exec setxkbmap us -variant dvp &

# Set Display layout
case $HOSTNAME in
  (arch) echo "No custom layout for laytop" &;;
  (archog) sh ~/.screenlayout/og-main-left-portrait.sh &;;
  (*)   echo "Default action is nothing" &;;
esac

# Clear user tmp folder
rm -rf tmp/* &

# Starting autokey
#autokey &

# Starting redshift
redshift &

# Setting background
xsetroot -solid "#000000" &

# Enable numlock
numlock on &

# Start xmonad
exec xmonad

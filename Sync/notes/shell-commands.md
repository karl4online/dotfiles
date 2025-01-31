# Set US layout with CAPS as escape
setxkbmap -layout us -option caps:escape

# Set Swedish layout with CAPS as escape
setxkbmap -layout se -option caps:escape

# Set keyboard for system
localectl status
setxkbmap -print -verbose 10
localectl set-x11-keymap se
localectl set-keymap sv-latin1
localectl list-keymaps | grep se
localectl list-keymaps | grep sv

# Compile C programs and install
make clean install

# Patch C programs
patch -p1 < "patches/dwm-attachaside-6.4.diff"

# Randomize wallpapers with 'feh'
feh --randomize --bg-fill ~/Pictures/*

# Adjust screen brightness
brightnessctl s 20%+
brightnessctl s 20%-

# Set VConsole font
setfont ter-v22b
setfont -d

# Untar a tar file
tar -xvf dwm.tar

# Set power-profile for Laptop
powerprofilesctl get
powerprofilesctl list
powerprofilesctl set balanced

systemctl status thermald.service 
systemctl status power-profiles-daemon.service 

fc-cache -vf

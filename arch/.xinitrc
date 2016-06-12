#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# twm &
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login

# System tray
#redshiftgui --min &
#dropbox start
#volumeicon &
#nm-applet &
#tidybattery &
#cbatticon &
#octopi-notifier &
#krb5-auth-dialog &

# Gnome services
# /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#zeitgeist-daemon &

# autorandr --change
#sh ~/.fehbg &
# nitrogen --restore
# compton -b --config ~/.config/compton.conf
# tint2 &
# xsetroot -cursor_name left_ptr
# light-locker --lock-on-suspend &
# redshift &
# unclutter -grab &

# Rename the window manager so that MATLAB displays correctly
wmname LG3D

# Menu in system tray; start this last so hopefully it shows up in the upper-right corner
# menutray -i &


# XOLAN
gsettings-data-convert &
xdg-user-dirs-gtk-update &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/gnome-settings-daemon/gnome-settings-daemon &
/usr/lib/gnome-user-share/gnome-user-share &
eval "$(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)"
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK


# WM: bspwm
#sxhkd &
#exec bspwm

# WM: i3
xset fp rehash &
xrdb -merge .Xresources &
hsetroot -fill /home/xolan/Pictures/Wallpapers/low-poly.jpg &
yabar &
exec i3

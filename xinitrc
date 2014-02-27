xrdb -merge ~/.Xresources
xset +fp /usr/share/fonts/local
xset fp rehash
syndaemon -t -k -i 2 -d &
sh ~/.fehbg &
xsetroot -cursor_name left_ptr &
unclutter -grab -noevents -root &
compton &
sxhkd &
redshift &
exec bspwm

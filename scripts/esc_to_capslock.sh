xmodmap -e "remove Lock = Caps_Lock"
#xmodmap -e "remove Escape = Escape"
xmodmap -e "keysym Escape = Caps_Lock"
xmodmap -e "keysym Caps_Lock = Escape"
xmodmap -e "add Lock = Caps_Lock"
#xmodmap -e "add Escape = Escape"

xmodmap -e "keycode 9 = Caps_Lock"

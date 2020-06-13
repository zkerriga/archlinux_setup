# For the benefit of emacs users: -*- shell-script -*-
###########################
# xbindkeys configuration #
###########################
#
# Version: 1.8.6
#
# If you edit this file, do not forget to uncomment any lines
# that you change.
# The pound(#) symbol may be used anywhere for comments.
#
# To specify a key, you can use 'xbindkeys --key' or
# 'xbindkeys --multikey' and put one of the two lines in this file.
#
# The format of a command line is:
#    "command to start"
#       associated key
#
#
# A list of keys is in /usr/include/X11/keysym.h and in
# /usr/include/X11/keysymdef.h
# The XK_ is not needed.
#
# List of modifier:
#   Release, Control, Shift, Mod1 (Alt), Mod2 (NumLock),
#   Mod3 (CapsLock), Mod4, Mod5 (Scroll).
#

# The release modifier is not a standard X modifier, but you can
# use it if you want to catch release events instead of press events

# By defaults, xbindkeys does not pay attention with the modifiers
# NumLock, CapsLock and ScrollLock.
# Uncomment the lines above if you want to pay attention to them.

#keystate_numlock = enable
#keystate_capslock = enable
#keystate_scrolllock= enable

# Examples of commands:

"xbindkeys_show" 
  control+shift + q
##########################
#My commands -> FUCK YEAH#
##########################

#Change brightness +5%
"brightnessctl s +5%"
  Mod2 + XF86MonBrightnessUp

#Change brightness -5%
"brightnessctl s 5%-"
  Mod2 + XF86MonBrightnessDown

#Change sound-lvl
"amixer -c 0 sset Master 2-"
  XF86AudioLowerVolume

"amixer -c 0 sset Master 2+"
  XF86AudioRaiseVolume

"amixer set Master toggle"
  XF86AudioMute

#Scrinshoot
"flameshot gui"
  Print

#Start first workspace
"bash /home/zkerriga/.i3/load_layout_1.sh"
  Mod4 + Super_L + KP_Enter

#Start discord
"discord"
  Mod4 + Super_L + o

#Start Clion
"clion"
  Mod4 + Super_L + Mod2 + l

#Start slack
"slack"
  Mod4 + Super_L + Mod2 + k

# set directly keycode (here control + f with my keyboard)
#"xterm"
#  c:41 + m:0x4

# specify a mouse button
#"xterm"
#  control + b:2

#"xterm -geom 50x20+20+20"
#   Shift+Mod2+alt + s
#
## set directly keycode (here control+alt+mod2 + f with my keyboard)
#"xterm"
#  alt + c:0x29 + m:4 + mod2
#
## Control+Shift+a  release event starts rxvt
#"rxvt"
#  release+control+shift + a
#
## Control + mouse button 2 release event starts rxvt
#"rxvt"
#  Control + b:2 + Release

##################################
# End of xbindkeys configuration #
##################################

#!/bin/bash

# this is the format to be used directly by rofi as a mode
# if you want to execute this rofibar in a command, use
# "rofi -show menu_name -modi "menu_name:~/.config/rofi/script.sh"
# scripts inside /scripts are loaded on startup (but it doesnt work for me tho)

# options to be displayed, order matters
options=(
	"Firefox\0icon\x1ffirefox"
	"Discord\0icon\x1fdiscord"
	"Terminal kitty\0icon\x1futilities-terminal"
	"VS Code\0icon\x1fvscode"
)
# commands executed, the key has to be the same as the name given
declare -A commands
commands["Firefox"]='firefox'
commands["Discord"]='discord'
commands["Terminal kitty"]='kitty'
commands["VS Code"]='code'

if [ -z "$1" ]; then
	# show options
	for option in "${options[@]}"; 
	do
		echo -e "$option";
	done
else
	# execute commands, IMPORTANT it detaches so your pc doens't freeze XD
	eval "${commands[$1]}" &>/dev/null &
fi

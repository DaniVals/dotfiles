#!/bin/bash

# locking, shutting down, and all that stuff

# options to be displayed, order matters
options=(
	"Lock\0icon\x1fsystem-lock-screen-symbolic"
	"Logout\0icon\x1fsystem-log-out-symbolic"
	"Suspend\0icon\x1fpreferences-desktop-screensaver-symbolic"
	"Power off\0icon\x1fsystem-shutdown-symbolic"
	"Reboot\0icon\x1fsystem-reboot-symbolic"
)
# commands executed, the key has to be the same as the name given
declare -A commands
commands["Lock"]='i3lock'
commands["Logout"]='i3-msg exit'
commands["Suspend"]='systemctl suspend'
commands["Power off"]='systemctl poweroff'
commands["Reboot"]='systemctl reboot'

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

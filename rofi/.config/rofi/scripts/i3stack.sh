#!/bin/bash

# change the i3 stacking

# options to be displayed, order matters
options=(
	"Tabbed\0icon\x1ftabs-icon.png" # theres no good icon :<
	"Split\0icon\x1fpreferences-system-windows"
	"Stacker\0icon\x1fview-sort-ascending"
)
# commands executed, the key has to be the same as the name given
declare -A commands
commands["Tabbed"]='i3-msg layout tabbed'
commands["Stacker"]='i3-msg layout stacker'
commands["Split"]='i3-msg layout toggle split'

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

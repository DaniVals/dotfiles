#!/bin/bash

# this run bc i have to add her the extra CSS for the backgrounds
rofi -show power -modi "power:~/.config/rofi/scripts/power.sh" \
	-theme-str '
		inputbar {
			enabled: false;
		}
		textbox-prompt-colon {
			enabled: false;
		}
		sidebar {
			enabled: false;
		}
		listview { 
			columns: 5;
			lines: 1;
			fixed-height: true;
			border-color: #0000;
		}
		element {
			orientation: vertical;
			padding: 0px;
		}
		element-text {
			enabled: false;
		}
		element-icon {
			size: 100px;
			margin:  0px;
			padding: 40px;
			horizontal-align: 0.5;
			color: #fff;
		}
	'

#!/bin/bash

# this run bc i have to add her the extra CSS for the backgrounds
rofi -show wallpaper -modi "wallpaper:~/.config/rofi/scripts/wallpaper.sh" \
	-theme-str '
		listview { 
			columns: 3;
			lines: 3;
			fixed-height: true;
		}
		element {
			orientation: vertical;
			padding: 0px;
		}
		element-icon { 
			size: 300px;
			margin: 0px 0px 0px 0px;
			padding: -70px 0px -70px 0px;
			horizontal-align: 0.5;
		}
	'

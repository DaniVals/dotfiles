#!/bin/bash

# changing feh bg

# hardcoded images route
BG_DIR="$HOME/Pictures/feh_backgrounds"

if [ "$ROFI_RETV" -eq 0 ]; then
	find "$BG_DIR" -type f \( \
		-iname "*.jpg" -o \
		-iname "*.jpeg" -o \
		-iname "*.png" \
	\) -print0 | while IFS= read -r -d '' file; do
		name="$(basename "$file")"
		printf '%s\0icon\x1f%s\0info\x1f%s\n' "$name" "$file" "$file"
	done
else
	file="${1#*$SEP}"
	feh --bg-fill "$BG_DIR/$file" &>/dev/null &
fi

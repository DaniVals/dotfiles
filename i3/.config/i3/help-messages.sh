#!/bin/bash

CLOSE_BUTTON="-B 'volver' \"sh -c 'exit' \""

case $1 in
	apps)
		i3-nagbar -m 'APPS:' -B 'volver' "exit; echo 'hola'" \
		$CLOSE_BUTTON
		;;
	ventanas)
		i3-nagbar -m 'VENTANAS: CTR+'
		;;
	movimientos)
		i3-nagbar -m 'MOVIMIENTOS: '
		;;
	*)
		# TAMBIEN ES LA DE INICIO
		i3-nagbar -m 'HOLAAAAAAAA :33333' \
			-B 'movimientos' "$0 movimientos; exit" \
			-B 'ventanas' "$0 ventanas; exit" \
			-B 'apps' "$0 apps exit" \
		;;
esac



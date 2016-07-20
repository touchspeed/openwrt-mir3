#!/bin/sh

. /lib/functions/leds.sh
. /lib/apm821xx.sh

get_status_led() {
	case $(apm821xx_board_name) in
	*)
		;;
	esac
}

set_state() {
	get_status_led

	case "$1" in
	preinit)
		status_led_blink_preinit
		;;

	failsafe)
		status_led_blink_failsafe
		;;

	preinit_regular)
		status_led_blink_preinit_regular
		;;

	done)
		status_led_on
		;;
	esac
}
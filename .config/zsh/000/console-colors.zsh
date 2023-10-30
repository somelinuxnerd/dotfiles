#!/usr/bin/env zsh
# shellcheck disable=all

set_vconsole_colors() {

	local key value console_colors

	typeset -A console_colors=(
		'0' '000000'	#  0 - Black
		'1' 'FF5555'	#  1 - Red
		'2' '50FA7B'	#  2 - Green
		'3' 'F1FA8C'	#  3 - Yellow
		'4' 'BD93F9'	#  4 - Blue
		'5' 'FF79C6'	#  5 - Magenta
		'6' '8BE9Fd'	#  6 - Cyan
		'7' 'F8F8F2'	#  7 - White
		'8' '4D4D4D'	#  8 - Bright Black
		'9' 'FF6E6E'	#  9 - Bright Red
		'A' '69FF94'	# 10 - Bright Green
		'B' 'FFFFA5'	# 11 - Bright Yellow
		'C' 'D6ACFF'	# 12 - Bright Blue
		'D' 'FF92DF'	# 13 - Bright Magenta
		'E' 'A4FFFF'	# 14 - Bright Cyan
		'F' 'FFFFFF'	# 15 - Bright White
	)

	for key value in ${(@kv)console_colors}; do
		printf %b '\e]P'"${key}${value}"
	done

	clear

}

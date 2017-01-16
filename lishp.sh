#!/bin/sh
set -eu

car() {
	if [ $# -gt 0 ]; then
		echo "$1"
	else
		while read LINE; do
			car $LINE
		done
	fi
}

cdr() {
	if [ $# -gt 0 ]; then
		shift
		echo "$@"
	else
		while read LINE; do
			cdr $LINE
		done
	fi
}

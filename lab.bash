#!/bin/bash

function main {
	cd /mnt/c/Users/Moritz/Documents/Ostern/Start
	COUNTER=0
	loop
}

function loop {
	if (( $COUNTER == 22 )); then copy; fi;
	(( BACK = $RANDOM % 2 ))
	if [[ $(pwd) == /mnt/c/Users/Moritz/Documents/Ostern/Start ]]; then BACK=0; fi;
	cont
}

function cont {
	if (( $BACK == 0 )); then check; fi;
	if (( $BACK == 1 )); then cd ..; fi;
	loop
}

function check {
	[ "$(ls -A)" ] && random || create
}

function random {
	(( GO = $RANDOM % 4))
	if (( $GO == 0 )); then cd rechts; fi
	if (( $GO == 1 )); then cd links; fi
	if (( $GO == 2 )); then cd oben; fi
	if (( $GO == 3 )); then cd unten; fi
	loop
}

function create {
	(( COUNTER = $COUNTER + 1 ))
	mkdir rechts
	mkdir links
	mkdir oben
	mkdir unten
	loop
}

function copy {
	touch link
	exit
}

main

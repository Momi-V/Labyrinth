#!/bin/bash
function main {
	cd /mnt/c/Users/Moritz/Documents/Test
	COUNTER=0
	loop
}

function loop {
	if (( $COUNTER = 10 )); then exit; fi;

	BACK=$RANDOM % 2

	if (( $BACK = 0 )) && [[$(pwd) == C:\Users\Moritz\Documents\Test]]; then loop; else cont; fi;
}

function cont {
	if (( $BACK = 0 )); then cd ..; fi;
	if (( $BACK = 1 )); then check; fi;
	loop
}

function check {
	ls | grep "*" && random || create
}

function random {
	GO=$RANDOM % 4
	if (( $GO = 0 )); then cd rechts; fi
	if (( $GO = 1 )); then cd links; fi
	if (( $GO = 2 )); then cd oben; fi
	if (( $GO = 3 )); then cd unten; fi
	loop
}

function create {
	COUNTER=(($COUNTER + 1))
	mkdir rechts
	mkdir links
	mkdir oben
	mkdir unten
	loop
}

main

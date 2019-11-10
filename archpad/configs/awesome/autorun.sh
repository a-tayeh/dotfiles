#! /bin/bash

function run {
	if ! pgrep $1 ;
	then 
		$@&
	fi
 }
run polybar -c ~/.config/polybar/config main &
run compton --config ~/.config/compton/compton.conf --blur-background

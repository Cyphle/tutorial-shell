#!/bin/bash

function lsd {
	date=$1
	# i option of grep allows to use all lowercase letters in month name
	# match any line that contains 41 characters following by the function argument
	ls -l | grep -i "^.\{42\}$date" | cut -c55-
}

echo $(lsd '2 jan')

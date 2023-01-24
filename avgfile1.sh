#!/bin/bash
function avgfile () {
	path=$1
	file_count=0
	total_size=0

	if [[ ! -d $path ]]; then
		echo "Directory $path does not exists" #>&2
		exit 1
	fi
	for file in "$path"/*; 	do
		if [[ -f $file ]]; then
			(( total_size += $(stat -c%s "$file") ))
			(( file_count++ ))
		fi
	done
	if [[ $file_count -eq 0 ]]; then
		echo "There is not files in $path"
	else
		echo "Average files size in $path is $(( total_size / file_count )) bytes"
	fi
}
#vgfile "$1"
#avgfile /tmp
avgfile /home/miroshnichenko
#exit 0

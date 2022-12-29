#!/bin/bash
echo "Введите имя файла с расширением"
read file
case "$file" in
	( *.jpg | *.gif | *.png )
		echo image
		;;
	*.mp3 | *.wav )
		echo audio
		;;
	*.txt | *.doc )
		echo text
		;;
	* )
		echo unknown
esac

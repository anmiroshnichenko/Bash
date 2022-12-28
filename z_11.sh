#!/bin/bash
echo "Введите путь до директории"
read dir
if [[ ! -d $dir ]]; then
        mkdir $dir
        echo "директория $dir создана"
else
        echo "директория $dir уже существует"
fi;

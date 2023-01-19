#!/bin/bash
select pill in red blue green;
do
        echo "You chose $pill"
done

select pill in red blue; do
        case $pill in
                red)
                        echo "you will know the truth"; break;;
                blue)
                        echo "you will know the anything"; break;;
        esac
done

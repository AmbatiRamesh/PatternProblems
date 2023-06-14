#!/bin/bash

rightPyramid() {
    for ((i=1; i<=$1; i++))
    do
        for ((j=$1; j>$i; j--))
        do
            printf " "
        done
        for ((k=1; k<=$i; k++))
        do
            printf "*"
        done
        printf "\n"
    done
}
echo "1.Right Pyramid"

read -p "Enter the pattern number: " pattern_type
read -p "Enter the number of rows: " rows

case $pattern_type in
    1) echo "Selected pattern: Right Pyramid"
       rightPyramid $rows
       ;;
    *) echo "Invalid pattern number. Please try again."
       ;;
esac


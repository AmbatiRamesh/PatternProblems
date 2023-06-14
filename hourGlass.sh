#!/bin/bash

hourGlass() {
    for ((i=1; i<=$1; i++))
    do
        for ((j=1; j<=$i-1; j++))
        do
            printf " "
        done
        for ((k=1; k<=2*($1-$i)+1; k++))
        do
            printf "*"
        done
        printf "\n"
    done
    for ((i=$1-1; i>=1; i--))
    do
        for ((j=1; j<=$i-1; j++))
        do
            printf " "
        done
        for ((k=1; k<=2*($1-$i)+1; k++))
        do
            printf "*"
        done
        printf "\n"
    done
}
echo "1. Hourglass"

read -p "Enter the pattern number: " pattern_type
read -p "Enter the number of rows: " rows

case $pattern_type in
    1) echo "Selected pattern: Hourglass"
       hourGlass $rows
       ;;
    *) echo "Invalid pattern number. Please try again."
       ;;
esac

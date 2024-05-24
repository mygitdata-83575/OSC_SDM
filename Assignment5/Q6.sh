#!/bin/bash

# Function to check year leap year or not
is_leap_year() {
    year=$1
    if [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ] || [ $((year % 400)) -eq 0 ]; then
        echo "$year is a leap year."
    else
        echo "$year is not a leap year."
    fi
}

# Ask for input
read -p "Enter a year: " year

# Calling the function is_leap_year function
is_leap_year $year

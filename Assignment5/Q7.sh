#!/bin/bash

# Function to determine whether a number is positive or negative
check_sign() {
    if [ $1 -gt 0 ]; then
        echo "$1 is positive."
    elif [ $1 -lt 0 ]; then
        echo "$1 is negative."
    else
        echo "$1 is neither positive nor negative (it's zero)."
    fi
}

# Ask for input
read -p "Enter a number: " number

# function calling
check_sign $number

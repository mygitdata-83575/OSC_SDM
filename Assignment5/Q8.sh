#!/bin/bash

# Function to print the table of given number
print_table() {
    number=$1
    echo "Table of $number:"
    for ((i=1; i<=10; i++)); do
        echo "$number x $i = $((number * i))"
    done
}

# ask for input
read -p "Enter a number: " number

# function Calling
print_table $number

#!/bin/bash

# Function to calculate the factorial of given number
factorial() {
    num=$1
    fact=1
    for ((i=1; i<=num; i++)); do
        fact=$((fact * i))
    done
    echo "The factorial of $num is: $fact"
}

# Ask for input
read -p "Enter a number: " number

# function Calling
factorial $number

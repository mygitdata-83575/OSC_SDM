#!/bin/bash

# Function to print Fibonacci series up to a given number
fibonacci() {
    num_terms=$1
    # Assume First two terms of Fibonacci series
    a=0
    b=1
    echo "Fibonacci series up to $num_terms terms:"
    # Print first two terms
    echo -n "$a $b "
    # Loop to generate the terms
    for ((i=2; i<num_terms; i++)); do
        next=$((a + b))
        echo -n "$next "
        a=$b
        b=$next
    done
    echo ""  # Newline
}

# Ask for input
read -p "Enter the number in Fibonacci series: " num_terms

# function Calling
fibonacci $num_terms

#!/bin/bash

# Function to print pattern
print_pattern() {
    for ((i=1; i<=5; i++)); do
        for ((j=1; j<=i; j++)); do
            echo -n "* "
        done
        echo ""
    done
}

# function calling
print_pattern

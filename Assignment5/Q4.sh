#!/bin/bash

# Function to check number prime or not
is_prime() {
    num=$1
    # If number is less than 2, it's not prime
    if [ $num -lt 2 ]; then
        echo "$num is not prime."
        return
    fi
    # Check divisibility from 2 to square root of the number
    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            echo "$num is not prime."
            return
        fi
    done
    # If no divisor found, it's prime
    echo "$num is prime."
}

# Ask for input
read -p "Enter a number: " number

# Function Calling the is_prime function
is_prime $number

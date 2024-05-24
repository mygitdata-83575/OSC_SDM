#!/bin/bash

# Function to calculate gross salary
calculate_gross_salary() {
    basic_salary=$1
    # Calculate DA (40% of basic salary)
    da=$(echo "scale=2; $basic_salary * 0.4" | bc)
    # Calculate HRA (20% of basic salary)
    hra=$(echo "scale=2; $basic_salary * 0.2" | bc)
    # Calculate gross salary (Basic + DA + HRA)
    gross_salary=$(echo "scale=2; $basic_salary + $da + $hra" | bc)
    echo "Gross salary: $gross_salary"
}

# Ask for input
read -p "Enter basic salary: " basic_salary

# function Calling
calculate_gross_salary $basic_salary

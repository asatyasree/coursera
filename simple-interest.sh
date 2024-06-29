#!/bin/bash

# This script calculates simple interest

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate_of_interest=$2
    time_period=$3
    interest=$(echo "$principal * $rate_of_interest * $time_period / 100" | bc -l)
    echo "The simple interest is: $interest"
}

# Read input from the user
echo "Enter the principal amount: "
read principal

echo "Enter the rate of interest (in percentage): "
read rate_of_interest

echo "Enter the time period (in years): "
read time_period

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate_of_interest $time_period

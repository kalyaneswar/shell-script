#!/bin/bash

# one way
num1=$1
num2=$2

sum=$($num1+$num2)
echo "Total no of sum $num1 and $num2 is :$sum"

# another way 


# Add the numbers using expr command
sum_b=$(expr $num1 + $num2)

# Print the result
echo "The sum of $num1 and $num2 is: $sum_b"

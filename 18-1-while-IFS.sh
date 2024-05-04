#!/bin/bash

# Set IFS to newline to read lines of input
IFS=$'\n'

string="apple banana orange"

# Iterate over each word in the string
while read -r fruit; do
    echo "I like $fruit"
done <<< "$string"

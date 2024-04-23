#!/bin/bash

MOVIES=("AWE" "ONE" "DJ")

# arrays as ways starts with 0

echo "First movie is ${MOVIES[0]}"
echo "Second movie is ${MOVIES[1]}"
echo "Third movie is ${MOVIES[2]}"

# to get all list
echo "All movie are ${MOVIES[@]}"

# Length of the array
echo "Number of elements in the array: ${#MOVIES[@]}"
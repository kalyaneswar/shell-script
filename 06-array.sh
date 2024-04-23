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

echo "adding movies"
# Adding elements to the array
MOVIES+=( "RRR" "PREMALU" )

# to get all list
echo "All movie before deletion are ${MOVIES[@]}"

echo "about to delete one movie"
# Deleting an element from the array
unset 'MOVIES[2]'

# Length of the array after deletion
echo "Number of elements in the array: ${#MOVIES[@]}"

# to get all list
echo "All movie list after deletion are ${MOVIES[@]}"
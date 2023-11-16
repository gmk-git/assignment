#!/bin/bash

# Check if two arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: generatecsv.sh <start_index> <end_index>"
  exit 1
fi

# Get start and end indices
start_index=$1
end_index=$2

# Check if start index is less than or equal to end index
if [ $start_index -gt $end_index ]; then
  echo "Start index must be less than or equal to end index."
  exit 1
fi

# Generate CSV file
> generated.csv

# Loop from start index to end index
for i in $(seq $start_index $end_index); do
  # Generate random number
  random_number=$((RANDOM % 100))

  # Write index and random number to CSV file
  echo "$i, $random_number" >> generated.csv
done


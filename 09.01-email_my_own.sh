#!/bin/bash

# Set the threshold for /tmp directory space in percentage
threshold=10

# Get the disk space usage of /tmp directory
tmp_space=$(df -h /tmp | awk 'NR==2 {print $5}' | cut -d'%' -f1)

# Check if the disk space usage is above the threshold
if [ $tmp_space -ge $threshold ]; then
    # Send an email notification
    echo "Warning: /tmp directory space is running low. Current usage is $tmp_space%." | mail -s "Low /tmp space alert" kalyaneswarreddy16696@gmail.com
fi

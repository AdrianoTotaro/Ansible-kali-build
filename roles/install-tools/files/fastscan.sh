#!/bin/bash

# Check if an IP address is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <IP>"
    exit 1
fi

IP="$1"

# Run the nmap command and capture its output
output=$(nmap -p- -T4 --min-rate=5000 "$IP")

# Print the original nmap output
echo "$output"

# Extract port numbers from the nmap output.
# The lines with port numbers typically start with something like "22/tcp" or "80/tcp".
# We use grep to filter these lines and awk to extract the port number.
ports=$(echo "$output" | grep -E '^[0-9]+/' | awk -F'/' '{print $1}' | paste -sd, -)

# If any ports were found, print them
if [ -n "$ports" ]; then
    echo "Ports:"
    echo "nmap -p$ports -sC -sV $IP"
fi

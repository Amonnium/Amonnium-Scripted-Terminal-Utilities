#!/bin/bash

# Define colors
GREEN='\033[0;32m'
NC='\033[0m' # No Color

while true; do
    # Clear the screen and print the current time in green
    clear
    echo -e "${GREEN}$(date +%T)${NC}"

    # Sleep for 1 second
    sleep 1
done

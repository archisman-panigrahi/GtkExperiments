#!/bin/bash

pkill twofing
# Run the command and store the output in a variable
output=$(libinput list-devices)

# Use a flag to indicate when we've found the device
found_device=false

# Initialize the variable to store the kernel information
touch_input_name=""

# Read the output line by line
while IFS= read -r line; do
    if $found_device; then
        # If we have found the device, read the next line for the kernel info
        touch_input_name=$(echo "$line" | awk '{print $2}')
        break
    fi
    
    # Check if the current line is the device we are looking for
    if [[ "$line" == *"Device:           hid-over-i2c 03EB:8207"* ]]; then
        found_device=true
    fi
done < <(echo "$output")

# Print the result
echo "The device id is = $touch_input_name"
twofing $touch_input_name


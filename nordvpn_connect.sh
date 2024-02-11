#!/bin/bash

# Display a message indicating the delay and the option to skip
echo "Waiting for 2 minutes. Press Enter to skip or wait."
echo "To skip, simply press Enter."

# Wait for user input (press Enter to skip)
read -t 120 -p "Press Enter to skip..." input

# If the user presses Enter, provide a message
if [ -z "$input" ]; then
    echo "Delay skipped."
    # Continue with the NordVPN-related actions
    # List of countries
    countries=("italy" "belgium" "netherlands" "germany" "norway")

    # Check if NordVPN is already connected
    if nordvpn status | grep -q "Status: Connected"; then
        selected_country=$(nordvpn status | awk -F 'Country: ' 'NF>1 {print $2}')
        echo "NordVPN is already connected to $selected_country."
        notify-send "NordVPN is already connected" "Connected to $selected_country"
    else
        # Choose a random country from the list
        selected_country=${countries[RANDOM % ${#countries[@]}]}

        # Connect to the random country
        nordvpn connect $selected_country

        # Check if the connection was successful
        if nordvpn status | grep -q "Status: Connected"; then
            echo "NordVPN is now connected to $selected_country."
            # Display a pop-up notification
            notify-send "NordVPN Connected" "Connected to $selected_country"
        else
            echo "NordVPN connection failed."
            notify-send "NordVPN wasn't able to connect to $selected_country"
        fi
    fi
fi

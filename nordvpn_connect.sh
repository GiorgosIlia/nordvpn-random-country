#!/bin/bash

# List of countries
countries=("United Kingdom" "Germany" "Netherlands" "France" "Sweden" "Switzerland" "Belgium" "Denmark" "Norway" "Poland" "Ireland" "Czech Republic" "Italy" "Spain" "Finland" "Serbia" "Austria" "Slovakia" "Slovenia" "Bulgaria" "Hungary" "Latvia" "Romania" "Portugal" "Luxembourg" "Ukraine" "Greece" "Estonia" "Iceland" "Albania" "Cyprus" "Croatia" "Moldova" "Bosnia and Herzegovina" "Georgia" "North Macedonia" "Lithuania")

# Check if NordVPN is already connected
if nordvpn status | grep -q "Status: Connected"; then
    echo "NordVPN is already connected."
else
    # Choose a random country from the list
    selected_country=${countries[RANDOM % ${#countries[@]}]}

    # Connect to the random country
    nordvpn connect $selected_country

    # Check if the connection was successful
    if nordvpn status | grep -q "Status: Connected"; then
        echo "NordVPN is now connected to $selected_country."
    else
        echo "NordVPN connection failed."
    fi
fi

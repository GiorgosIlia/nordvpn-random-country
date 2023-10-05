#!/bin/bash

# List of countries
countries=("United Kingdom" "Germany" "Netherlands" "France" "Sweden" "Switzerland" "Belgium" "Denmark" "Norway" "Poland" "Ireland" "Czech Republic" "Italy" "Spain" "Finland" "Serbia" "Austria" "Slovakia" "Slovenia" "Bulgaria" "Hungary" "Latvia" "Romania" "Portugal" "Luxembourg" "Ukraine" "Greece" "Estonia" "Iceland" "Albania" "Cyprus" "Croatia" "Moldova" "Bosnia and Herzegovina" "Georgia" "North Macedonia" "Lithuania")

# Choose a random country from the list
selected_country=${countries[RANDOM % ${#countries[@]}]}

# Command to connect to NordVPN
nordvpn connect $selected_country

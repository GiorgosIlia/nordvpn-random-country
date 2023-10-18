# NordVPN Random Country Connection Script

This simple Bash script connects to NordVPN using a random country from a predefined list.

## Usage

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/GiorgosIlia/nordvpn-random-country.git
   ```

2. Navigate to the project directory:

   ```bash
   cd nordvpn-random-country
   ```

3. Make the script executable:

   ```bash
   chmod +x nordvpn_connect.sh
   ```

4. Run the script:

   ```bash
   ./nordvpn_connect.sh
   ```

## List of Supported Countries

- United Kingdom
- Germany
- Netherlands
- France
- Sweden
- Switzerland
- Belgium
- Denmark
- Norway
- Poland
- Ireland
- Czech Republic
- Italy
- Spain
- Finland
- Serbia
- Austria
- Slovakia
- Slovenia
- Bulgaria
- Hungary
- Latvia
- Romania
- Portugal
- Luxembourg
- Ukraine
- Greece
- Estonia
- Iceland
- Albania
- Cyprus
- Croatia
- Moldova
- Bosnia and Herzegovina
- Georgia
- North Macedonia
- Lithuania

## Notes

- This script relies on the NordVPN CLI tool being installed and configured on your system.
- It randomly selects a country from the list and connects to NordVPN using that country as the server location.

Feel free to customize the list of countries or script behavior as needed.

## Running the Script Periodically with Cron

To run the script periodically, you can set up a cron job. For example, to run the script every 4 hours, follow these steps:

1. Open your crontab configuration:

   ```bash
   crontab -e
   ```

2. Add a new cron job that specifies the frequency and the script to run. To run the script every 4 hours, you can use the following format:

   ```bash
   0 */4 * * * /path/to/nordvpn-random-country/nordvpn_connect.sh
   ```

   Replace `/path/to/nordvpn-random-country/` with the actual path to the script. Save and exit the crontab editor.

The script will now execute automatically every 4 hours. You can customize the schedule by adjusting the cron expression to your desired frequency.

## License

This script is open-source and available under the [MIT License](LICENSE).
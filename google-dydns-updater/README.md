# google-dydns-updater

GDyDNSu is a short script that performs a lookup of your external IP address and then uses curl to send an HTTPS GET request to update your Google Domains Dynamic DNS

- More information here: [https://support.google.com/domains/answer/6147083](https://support.google.com/domains/answer/6147083)
- Find the latest version here: [https://github.com/0utrider/simple-scripts](https://github.com/0utrider/simple-scripts)

## Installation

1. Ensure you have installed dependencies, particularly `moreutils` for timestamp (ts) support

2. Create a directory, such as `/opt/dydns` and then copy the .sh script to that directory
   - Make sure you remember to properly `chown` and `chmod` the file, as well as `chmod +x`
   - For assistance, see: [How to Use chmod and chown Command](https://www.cyberciti.biz/faq/how-to-use-chmod-and-chown-command/)

3. Follow the steps on the [Google Support Article](https://support.google.com/domains/answer/6147083) to obtain credentials for use of DyDNS

4. Edit the file to put those credentials in the *USER DEFINED VARIABLES* section.
   - e.g.: `sudo nano /opt/dydns/google-dydns-updater.sh`
   - **Do NOT use your Google account's username and password:** use the credentials from Step 3

4. Add the script to your crontab
   - Use the command `sudo crontab -e`
   - For assistance, see: [Crontab Generator](https://crontab-generator.org/) & [Crontab Man Page](https://man7.org/linux/man-pages/man5/crontab.5.html)


## License
[Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0)

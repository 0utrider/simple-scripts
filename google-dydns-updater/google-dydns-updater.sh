#!/bin/bash
#
# Google DyDNS Updater by 0utrider
#
# Usage:
#	Performs an HTTPS GET request to update your Google Domains Dynamic DNS
#		https://support.google.com/domains/answer/6147083
#	Recommend updating once every 24 hrs using crontab
#		https://crontab-generator.org/
#		https://man7.org/linux/man-pages/man5/crontab.5.html
#
# Dependencies: moreutils (ts), curl, dig
#
# Get the latest version here: https://github.com/0utrider/simple-scripts
#
#
#    Copyright 2022 Outrider - https://keybase.io/outrider
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

# =================== USER DEFINED VARIABLES ===================
# Do NOT use your Google account credentials! See the support.google.com article linked above.
USERNAME=""
PASSWORD=""
HOSTNAME="subdomain.domain.tld"
# ================= END USER DEFINED VARIABLES =================

# Resolve Public IP
IP=$( dig +short myip.opendns.com @resolver1.opendns.com )

# Update Google DNS Record
URL="https://${USERNAME}:${PASSWORD}@domains.google.com/nic/update?hostname=${HOSTNAME}&myip=${IP}"
curl -s $URL | ts '[%Y-%m-%d %H:%M:%S]'

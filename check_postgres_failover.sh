#!/bin/bash
source ./variable/setting.sh
source ./alert/alert_telegram.sh
# echo $ip_address

# Check Ping
output=$(ping -c 1 "$ip_address" 2>&1)


if [[ $output == *"1 received"* ]]; then
#   ssh postgres@"$slave_ip"  && pg_ctl -D "$pg_home" promote
#   exit 1
  sendAlertTelegramSuccess
else
  sendAlertTelegramError
fi

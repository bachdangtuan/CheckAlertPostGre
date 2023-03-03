#!/bin/bash

# Địa chỉ IP để ping
ip_address="8.8.8.8"

# master_ip="172.17.0.2"
# slave_ip="172.17.0.3"
# pg_home="/var/lib/postgresql/12/main/"





# Telegram Bot API token and chat ID
TOKEN="6112203391:AAEuDTYX3KQRNuoLKuJ0NAtpRoamdHIQQkA"
CHAT_ID="-957135587"



# URL API post telegeram
URL="https://api.telegram.org/bot${TOKEN}/sendMessage"

ERROR="
[ERROR]
Dia chi IP : x.x.x.x / 24
Hostname: variable
Chuyen trang thai automatic Master-Slaves Failover bi loi vui long kiem tra lai !
"

SUCCESS="

Dia chi IP : x.x.x.x / 24
Hostname: Ubuntu 20-04LTS
Chuyen trang thai Failover thanh cong
"

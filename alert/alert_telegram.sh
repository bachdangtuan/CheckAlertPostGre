#!/bin/bash
source ./variable/setting.sh


# URL API post telegeram
URL="https://api.telegram.org/bot${TOKEN}/sendMessage"

ERROR="
Dia chi IP : x.x.x.x / 24
Hostname: Ubuntu 20-04LTS
Chuyen trang thai Failover bi loi vui long kiem tra lai
"

SUCCESS="
Dia chi IP : x.x.x.x / 24
Hostname: Ubuntu 20-04LTS
Chuyen trang thai Failover bi loi vui long kiem tra lai
"


# Send Alert Error
sendAlertTelegramError (){
curl -s -X POST $URL \
-G -d chat_id=$CHAT_ID \
--data-urlencode "text=$ERROR" \
-d "parse_mode=HTML"
}



# Send Alert Success
sendAlertTelegramSuccess (){
curl -s -X POST $URL \
-G -d chat_id=$CHAT_ID \
--data-urlencode "text=$SUCCESS" \
-d "parse_mode=HTML"
}

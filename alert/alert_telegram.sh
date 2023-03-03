#!/bin/bash
source ./variable/setting.sh


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

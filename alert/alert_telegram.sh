#!/bin/bash
source ./variable/setting.sh
source ./check_os/check_os.sh


hostname_server=$hostname
host_ip= $myip



ERROR="
[ERROR]
Server: ${hostname_server}
Địa chỉ IP : ${host_ip} / 24
Nội dung: Chuyen trang thai automatic Master-Slaves Failover bi loi vui long kiem tra lai !
"

SUCCESS="
Server: ${hostname_server}
Địa chỉ IP : ${host_ip} / 24
Nội dung: Chuyển master - slaves thành công vui lòng kiểm tra lại databases
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

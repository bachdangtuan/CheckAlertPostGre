#!/bin/bash
source ./variable/setting.sh
source ./check_os/check_os.sh


host_ip=$myip
hostname_server=$hostname

# check ping lần nữa
output=$(ping -c 1 "$ip_address" 2>&1)



ERROR="
🚨[SWITCH-ERROR]🚨
Server: ${hostname_server}
Địa chỉ IP : ${host_ip} / 24
Nội dung: Chuyển trạng thái master - slaves databases postgre không thành công !
--------
Nguyên nhân: Không thể ping tới chủ slaves, có thể do lỗi phân quyền, sai databases, hoặc tài khoản không đúng
vui lòng kiểm tra lại vui lòng kiểm tra kết nối
"

SUCCESS="
✅[SWITCH-SUCCESS]✅
Server: ${hostname_server}
Địa chỉ IP : ${host_ip} / 24
Nội dung: Chuyển master - slaves thành công vui lòng kiểm tra lại trạng thái databases !
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

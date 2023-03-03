#!/bin/bash
source ./variable/setting.sh




echo $ip_address

# Kiểm tra kết nối bằng lệnh ping và lưu kết quả vào biến output
output=$(ping -c 1 "$ip_address" 2>&1)

# # Kiểm tra xem lệnh ping có thành công không
# if [[ $output == *"1 received"* ]]; then
#   echo "hello"
# else
#   echo "Không thể kết nối đến $ip_address"
# fi
#!/bin/bash

hostname=$(hostname)

checkmyiplocal(){
    hostname -I | awk '{print $1}'
}

myip=$checkmyiplocal
echo myip
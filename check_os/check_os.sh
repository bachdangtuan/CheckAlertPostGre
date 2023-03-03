#!/bin/bash

hostname=$(hostname)

myip=$(hostname -I | awk '{print $1}')


echo $hostname
echo $myip
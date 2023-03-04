#!/bin/bash

hostname=$(hostname)
myip=$(hostname -I | awk '{print $1}')

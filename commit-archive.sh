#!/bin/bash

echo "please input the password for the pi"

scp /var/archive/* pi@192.168.1.3:/var/archive/

#!/bin/bash

#for i in $@
#do
echo "working on $@"
	if [ -f "$@" ]
    then
        echo "$@ is a file and will now be stored"
		lrzip -z "$@" -o "/var/archive/$@$(date +'%y-%m-%y').tar.lrz" 
	fi		
	
	if [ -d "$@" ] 
    then
        echo "$@ is a directory and will be stored"
		lrztar -o "/var/archive/$@-$(date +'%y-%m-%d').tar.lrz" -z "$@" 
	fi
#done

#!/bin/bash

if [  -d "~/rcFiles" ]; then mkdir ~/rcFiles; fi


cd ~/rcFiles

for rc in $(ls ~/.*rc | rev | cut -d "/" -f 1 | rev)
do

        if [ ! -f rc ] ; then
                echo "$rc already exists in the repo"
        else
                mv ~/${rc} .
                ln -s ~/rcFiles/${rc} ~/${rc}
        fi

done






cd -







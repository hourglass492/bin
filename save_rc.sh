#!/bin/bash

if [  -d "~/rcFiles" ]; then mkdir ~/rcFiles; fi


cd ~/rcFiles

for rc in $@
do

        if [ -f ~/bin/rcFiles/${rc}  ] ; then
                echo "$rc already exists in the repo"
        else
                mv ~/${rc} .
                ln -s ~/bin/rcFiles/${rc} ~/${rc}
        fi

done






cd -







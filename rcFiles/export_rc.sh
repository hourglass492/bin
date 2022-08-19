#!/bin/bash

cd ~/rcFiles

for rc in $(ls ./.* | rev | cut -d "/" -f 1 | rev)
do

        if [ -f ~/${rc} ] ; then
                echo "$rc already exists in the home dir"
        else
                ln -s ~/rcFiles/${rc} ~/${rc}
        fi

done






cd -







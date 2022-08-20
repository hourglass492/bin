#!/bin/bash

pushd ~/bin/rcFiles

for rc in $(ls -a | rev | cut -d "/" -f 1 | rev)
do
		if [ ${rc} == ".." ] || [ ${rc} == "." ]; then
			# echo "continuing on "${rc}
			continue
		fi
        if [ -f ~/${rc} ] ; then
                echo "$rc already exists in the home dir"
        else
                ln -s ~/bin/rcFiles/${rc} ~/${rc}
        fi

done


popd







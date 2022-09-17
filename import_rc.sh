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
				read -p "Are you sure? " -n 1 -r
				echo    # (optional) move to a new line
				if [[ $REPLY =~ ^[Yy]$ ]]
				then
					rm ~/${rc}
                	ln -s ~/bin/rcFiles/${rc} ~/${rc}
				fi
        else
                ln -s ~/bin/rcFiles/${rc} ~/${rc}
        fi

done


popd







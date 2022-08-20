#!/bin/bash


for rc in $@
do
		if [ -f ~/bin/rcFiles/${rc} ]; then
                echo "$rc already exists in the repo"
        else
                mv ${rc} ~/bin/rcFiles/
                ln -s ~/bin/rcFiles/${rc} ${rc}
				echo "Saved "${rc}
        fi
	echo $rc
done













#!/bin/bash



/usr/bin/tmux attach-session -t "`/usr/bin/tmux ls | cut -d : -f 1 | head -1`" || /usr/bin/tmux

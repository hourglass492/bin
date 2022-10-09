alias clear="clear -x"
alias push="git add . && git status && git commit -F - && git push"
alias history="history | grep "
alias tmuxa='/usr/bin/tmux a -t $(/usr/bin/tmux ls | cut -d ":" -f 1 | sort -n | head -n 1 -) || /usr/bin/tmux'
alias spooky='ssh hourglass492@spookyctf.net  -p 4691'

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

cat ~/.cache/wal/sequences

alias ls='ls --color=auto'
alias ..='cd ..'
alias jdot='git --git-dir=$HOME/.jdots/ --work-tree=$HOME'
# alias wwussh='ssh -Y -p 922 nataraj@linux.cs.wwu.edu'
alias wwufs='sshfs -p 922 nataraj@linux-05.cs.wwu.edu:/home/nataraj/ ~/nataraj_fs/'

function wwussh () {
    if [ ! -z "$1" ]; then
        ssh -p 922 nataraj@linux-$1.cs.wwu.edu
    fi
}

function theme () {
	if [ -z "$1" ]; then
		ls -1 ~/Pictures/wp
	else
		wal -q -n -i ~/Pictures/wp/$1 --backend colorz > /dev/null 2>&1;
        feh --bg-tile ~/Pictures/wp/$1
	fi
}

function flux () {
    redshift -PO $1
}


PS1='[\u@\h \W]\$ '

LADSPA_PATH=/usr/lib/ladspa
export LADSPA_PATH

export PATH="/home/jagnat/hc:/home/jagnat/.local/thumb/bin:/home/jagnat/.local/bin:/home/jagnat/blitz:/home/jagnat/.local/riscv/bin:$PATH"


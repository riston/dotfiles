# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# User specific aliases and functions
export PATH=$PATH:/usr/lib/jvm/java-7-oracle/bin

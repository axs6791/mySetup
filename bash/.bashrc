# reference:
# https://www.tldp.org/LDP/abs/html/sample-bashrc.html

[ -z "$PS1" ] && return

#Enable options:
shopt -s cdspell
shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s cmdhist
shopt -s histappend
shopt -s histreedit
shopt -s histverify
shopt -s extglob  

export CLICOLOR=1
alias ll='ls -l'
alias la='ls -la'
alias lrt='ls -lrt'
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/,vimrc'

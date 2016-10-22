# .bashrc
mouse
set -o emacs
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

#$include ~/.inputrc
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

#source ~/bin/mouse.sh

# User specific aliases and functions
alias logisim='java -jar ~/build/l*.jar'
alias grep='grep --color'
alias la='ls -lah $LS_COLOR'
alias rbash='source ~/.bashrc'
alias dt='date "+%F %T"'
alias j='cd ..;ls; '
alias bh="cat ~/.bash_eternal_history | grep"
alias install='sudo dnf install'
alias remove='sudo dnf remove'
alias reboot="sudo shutdown -r now"
alias off="sudo shutdown -h now"
alias mvnp="clear; mvn clean package"
alias grepr="grep -Ri"
gg() { pwd > /tmp/last_path; }
hh() { cd $(cat /tmp/last_path); }
function cl(){ cd "$@" && la; }
function cdn(){ for i in `seq $1` ; do cd ..; done; ls;  }

# User specific environment and startup programs

PATH=$PATH:/bin/:$HOME/.local/bin:$HOME/bin:/usr/bin/:/usr/local/heroku/bin

export PATH

export EDITOR=vim ranger

export PS1="\u:\e[37;1m\w\e[0m\n\$ "

#source $HOME/.rvm/scripts/rvm

#[[ $- = *i* ]] && source ~/build/liquidprompt/liquidprompt
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

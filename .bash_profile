[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

parse_git_branch(){
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export LSCOLORS="cx"

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin


if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

alias ls='ls -lGp'
alias cd:dbc='cd ~/DevBootCamp'
alias be='bundle exec'

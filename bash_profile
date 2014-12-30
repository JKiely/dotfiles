
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*



#########
# Aliases
#########

alias ll="ls -lhA"
alias mkdir="mkdir -pv"
alias cd..="cd .."
alias ..="cd .."

alias r="rspec"

alias py="python"

alias ga="git add -A"
alias gc="git commit -m"
alias gp="git push"
alias gs="git status"
alias hp="heroku push origin master"

alias e="emacs"

###########
# Functions
###########

mcd () {
    mkdir -p $1
    cd $1
}

gacp () {
     git add -A
     git commit -m "$1"
     git push
}

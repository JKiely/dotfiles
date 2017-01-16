#########
# Aliases
#########
  
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias mkdir="mkdir -pv"
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias t="touch"

alias rb="ruby"
alias py2="python"
alias py="python3"
alias ipy="ipython"

alias gi="git init"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gs="git status"
alias gpl="git pull origin master"
alias gac="git add . && git commit -m"
alias gco="git checkout"
alias gplf="git pull"


alias hp="git push heroku master"
alias ho="heroku open"


alias e="emacs"

alias venv="source /Users/jkiely/venv/bin/activate"

###########
# Functions
###########

mcd () {
    mkdir -p $1
    cd $1
}

gacp () {
     git add .
     git commit -m $1
     git push
}
  

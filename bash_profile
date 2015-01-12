
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*



#########
# Aliases
#########

alias ll="ls -lhA"
alias mkdir="mkdir -pv"
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias t="touch"

alias r="rspec"
alias sr="open SpecRunner.html"
alias g="grunt"

alias migrails="bin/rake db:migrate && bin/rake db:migrate RAILS_ENV=test"

alias rb="ruby"
alias py="python"
alias pyman="python manage.py"

alias gi="git init"
alias ga="git add -A"
alias gc="git commit -m"
alias gp="git push"
alias gs="git status"
alias gpl="git pull origin master"
alias gac="git add -A && git commit -m"

alias hc="heroku create"
alias hp="git push heroku master"
alias hm="heroku create && git push heroku master"
alias hl="heroku logs"
alias ho="heroku open"
alias hmig="heroku run rake db:migrate"

alias trm="touch README.md"


alias e="emacs"
alias sbl="subl ."

alias cdp="cd ~/Google\ Drive/Programming/"

###########
# Functions
###########

mcd () {
    mkdir -p $1
    cd $1
}

gacp () {
     git add -A
     git commit -m "$@"
     git push
}


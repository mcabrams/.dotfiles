source "$HOME/.bash_scripts/separator_and_timestamp"
source "$HOME/.bash_scripts/bash_prompt"
source "$HOME/.bash_scripts/explain"
source "$HOME/.bash_scripts/zscript"

# set-vim-mode
set -o vi

alias mysql-autocomplete="mysql --auto-rehash -u root"

alias rd="rm -rf"
alias src="source ~/.bashrc"
alias dropbox="cd $HOME/Dropbox/"
alias grep="grep -irn -C2 --color"
alias rvmgem="rvm gemset list"
alias vp-code="cd $HOME/vp/viewpoints-com"
alias tree="tree -CF"
alias vim='mvim -v'
alias vim="${vim}"
alias tmux="tmux -2" # support 256 colors
alias newvim="mvim -u ~/.vimrcnew"

# Github aliases for shorter commands

alias ga='git add'
alias gp='git push'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias glfl='git log --abbrev-commit --date=relative --graph -p'
alias glfm='git log --abbrev-commit --date=relative --graph --name-only -p'
alias glfs='git log --abbrev-commit --date=relative --graph'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gam='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

source ~/vp/viewpoints-com/script/vp-dev-helpers.sh
# source ~/.tmuxinator/tmuxinator.bash

export EDITOR=mvim
export VISUAL=mvim

eval `ssh-agent -s`
ssh-add

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

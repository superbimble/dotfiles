export TERM="xterm-256color"

ZSH=$HOME/.oh-my-zsh

ZSH_THEME="joshtronic"

COMPLETION_WAITING_DOTS="true"

plugins=(brew common-aliases composer git-extras git gitfast gitignore jsontools meteor node npm nvm osx redis-cli rsync systemadmin vundle web-search xcode z zsh_reload)

source $ZSH/oh-my-zsh.sh

# PHP_FULL_VERSION=`php --version | head -n 1 | awk '{print $2}'`
# PHP_MAJOR_MINOR=`echo $PHP_FULL_VERSION | awk -F '.' '{print $1$2}'`
# PHP_BASE_PATH=/usr/local/Cellar/php$PHP_MAJOR_MINOR/$PHP_FULL_VERSION
# 
# export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PHP_BASE_PATH/lib/php:~/Source/dotfiles/scripts:~/Source/dotfiles/git/scripts:$PHP_BASE_PATH/bin:/opt/X11/bin:$PHP_BASE_PATH/lib/php/File

# git
#alias    ga="git add"
#alias   gaa="git add --all"
#alias    gb="git branch"
#alias   gba="git branch -a"
#alias    gc="git commit"
#alias   gca="git commit -a"
#alias   gcl="git clone"
#alias   gco="git checkout"
#alias  gcob="git checkout -B"
#alias  gcom="git checkout master"
#alias    gd="git diff"
#alias   gdb="git delete-branch"
#alias    gf="git fetch"
#alias    gl="git log"
#alias    gm="git merge"
#alias   gmm="git merge master"
#alias  gmup="git fetch upstream; git merge origin/upstream"
#alias   gmv="git mv"
#alias    gp="git rev-parse --abbrev-ref HEAD | xargs git push origin"
#alias   gpu="git rev-parse --abbrev-ref HEAD | xargs git pull origin"
#alias    gr="git remote"
#alias   gra="git remote add"
#alias  grao="git remote add origin"
#alias   grr="git remote rm"
#alias  grro="git remote rm origin"
#alias   grm="git rm"
#alias    gs="git status"

# jekyll
alias jekyll="jekyll serve --watch"

# mtr
alias mtr="sudo mtr"

# zsh
#alias zshrc="source ~/.zshrc"

# vim
#alias   v="vim -p"
#alias  vi="vim -p"
#alias vim="vim -p"
#alias  vd="vimdiff"
#alias  vo="vim -O"


# Platform-specific
if [[ `uname` == "Darwin" ]];
then
	alias unquarantine="xattr -r -d com.apple.quarantine *"

	# Tell ls to be colourful
	export CLICOLOR=1
	export LSCOLORS=Exfxcxdxbxegedabagacad

	# Tell grep to highlight matches
	export GREP_OPTIONS="--color=auto"

	export   PATH=/usr/local/bin:/usr/local/sbin:$PATH
	export EDITOR="mvim -v"
else
	export   PATH="$HOME/Source/bash:$PATH"
	export EDITOR=vim
fi

for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "$method"="lwp-request -m '$method'"
done

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

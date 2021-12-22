TZ='America/Menominee'; export TZ

ZSH_THEME="kolo"
export ZSH="/home/gianni/.oh-my-zsh"

 HYPHEN_INSENSITIVE="true"
 COMPLETION_WAITING_DOTS="true"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(zsh-z z fzf zsh-autosuggestions git extract python pip colored-man-pages colorize sudo copydir copybuffer copyfile node dirhistory fancy-ctrl-z)

source $ZSH/oh-my-zsh.sh
source /home/gianni/.oh-my-zsh/plugins/*
source /usr/share/zsh/plugins/zsh-extract/extract.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
setopt GLOB_DOTS
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups


if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi


[[ -f ~/.zshrc-personal ]] && . ~/.zshrc-personal
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=/home/gianni/.local/bin:$PATHexport PATH=~/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/opt/chef/embedded/bin
export PATH=$PATH:/home/gianni/.local/share/gem/ruby/3.0.0/bin
export PATH=$PATH:/home/gianni/Documents/code/python/lyricScry


export EDITOR=nvim
export TERMINAL=xterm-kitty
export TERM=xterm-kitty

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin


alias trans='transmission-remote'
alias install='sudo pacman -S'
alias nrc='nvim .zshrc'
alias cp= 'cp -iv'
alias vim='nvim'
alias rss='newsboat'
alias nv='nvim'
alias epan='espanso'
alias python='python3'
alias copy='xsel -ib'
alias commitmsg='git commit -m "$(curl -s whatthecommit.com/index.txt)"'
alias gitm='git commit -m'
alias icat="kitty +kitten icat"
alias py='python3'
alias cse='ssh gyoung@cse.unl.edu'
alias exiftool='perl /media/ext-drive/misc/downloads/Image-ExifTool-12.19/exiftool'
alias tux='tuxi'
alias s='sudo systemctl'
alias ls='ls --color=auto'
alias la='ls -a'
alias l='ls'
alias cd..='cd ..'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias df='df -h'
alias wget="wget -c"
alias update='sudo pacman -Syyu'
alias nint='nvim ~/.config/nvim/init.vim'
alias snrc='source ranger'
alias star='sdcv --color'
alias ktheme='kitty +kitten themes --reload-in all'
alias vimrc='nvim .config/nvim/init.vim'

# HSTR configuration - add this to ~/.zshrc
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor,blacklist,no-confirm,raw-history-view      # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)
export HISTFILE=~/.zsh_history
export GOPATH=~/Documents/code/go/path


# added by travis gem
[ ! -s /home/gianni/.travis/travis.sh ] || source /home/gianni/.travis/travis.sh

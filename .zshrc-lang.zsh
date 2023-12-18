# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# path
export PATH="/usr/local/sbin:$PATH"
export PATH="${HOME}/.local/bin:${PATH}"
export PATH=$HOME/.mycmd:$PATH

# composer
export PATH="$PATH:$HOME/.composer/vendor/bin/"

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$PATH:$HOME/.nodebrew/current/bin

# pyenv
eval "$(pyenv init -)"

[[ -s "/usr/local/etc/grc.zsh" ]] && source /usr/local/etc/grc.zsh

# alias
alias ping='grc ping'
alias ifconfig='grc ifconfig'
alias make='grc make'
alias cat='ccat'
alias tree='exa -T'
alias ls='exa --icons'
alias gip='curl globalip.me'
alias lip='ifconfig | grep -e 172 -e 192 | awk '\''/inet/ { print $2 }'\'''
alias g='cd "$(ghq list --full-path | peco)"'

# golang
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH:bin
export PATH="~/go/bin:$PATH"
export PATH=$GOPATH/bin:$PATH

# ansible
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# bun
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# make go test project
function go-test() {
  rand=go-test-$(openssl rand -hex 2)
  mkdir $rand
  cd $rand
  go mod init test
  touch main.go
  echo "package main

func main(){}
  " > main.go
  code .
}


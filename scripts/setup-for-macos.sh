#!/bin/zsh
if [ ! -d $HOME/.zsh ]; then
  mkdir $HOME/.zsh
fi
if [ -f $HOME/.zshrc ]; then
  mv $HOME/.zshrc $HOME/.zshrc.bak
fi
cp ./.zshrc $HOME/.zshrc

function brew_install() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
}

function p10k() {
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.zsh/powerlevel10k
  cp .p10k.zsh $HOME/
  cp ./p10k/powerlevel10k.zsh-theme $HOME/.zsh/powerlevel10k/powerlevel10k.zsh-theme
}

function zsh_autosuggestions() {
  git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.zsh/zsh-autosuggestions
}

function zsh_syntax_highlighting() {
  git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting
}

function alter_cmd() {
  # change default cmd more useful
  brew install ccat
  brew install exa
  brew install grc
  brew install ghq
  brew install peco
  brew install hub
  brew tap homebrew/cask-fonts
  brew install --cask font-hack-nerd-font
}


function extra() {
  brew install composer
  brew install nodebrew
  brew install pyenv
  brew install ansible
  brew install bun
  brew install go
  brew install goenv
  brew install golangci
}

function install() {
  brew_install
  p10k
  zsh_autosuggestions
  zsh_syntax_highlighting
  alter_cmd
}

install

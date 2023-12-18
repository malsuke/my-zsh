# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/usr/local/sbin:$PATH"
export PATH="${HOME}/.local/bin:${PATH}"
export PATH=$HOME/.mycmd:$PATH
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
alias hub='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
# my-zsh

![test](https://github.com/malsuke/my-zsh/workflows/setup%20test/badge.svg)

## Setup

```bash
sh ./scripts/setup.sh
```

スクリプト実行後、ターミナルのフォントを `Nerd` に変更する。その後再起動する。


## ubuntu

bashをzshに変更

```zsh
chsh -s $(which zsh)
sudo reboot
```

```zsh
zsh ./scripts/setup-for-ubuntu.sh
```

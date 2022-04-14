# .Dotfiles
-

## Terminal

### Iterm2

[Iterm2](https://iterm2.com/)

### Hack - Nerd Font

```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

## Neovim

Install Neovim 0.6+

```
brew install neovim
```

Setup the configuration to pull from the .dotfiles directory

```
ln -s ~/.dotfiles/nvim ~/.config/nvim
```

Open Neovim and install packages

```
:PackerInstall
```

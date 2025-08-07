# Dotfiles
My dotfiles

New simpler dotfiles for my *nix/linux machines

## terminal (ghostty)
```sh
#fedora/rhel
sudo dnf copr enable scottames/ghostty
sudo dnf install ghostty
```

## zsh
```sh
#starship
curl -sS https://starship.rs/install.sh | sh

# nerdfont
curl -O https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Meslo.zip
## then install it in your system, often example: /usr/local/share/fonts/

#zsh auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZSOTDIR:-$HOME}/.zshrc

#zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```

## editor
Keep vim clean for cross-platform use, and use helix as the terminal IDE.

## cli tools
bat
fd

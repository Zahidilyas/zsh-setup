#!/usr/bin/env bash
set -e

# 1) Install prerequisites
sudo apt update
sudo apt install -y git zsh curl

# 2) Install Oh My Zsh
if [ ! -d "${HOME}/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# 3) Clone plugins
ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# 4) Link your dotfiles
ln -sf $(pwd)/.zshrc $HOME/.zshrc

# 5) Change default shell
chsh -s $(which zsh) || true

echo "Done! Log out and back in (or exec zsh)."

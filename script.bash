#!/bin/bash

echo "setup script..."

sudo dnf install zsh
curl -s https://raw.githubusercontent.com/MR3MMZ/setup-zsh/main/script.bash | bash -s --
chsh -s $(which zsh)

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
  zsh-syntax-highlighting
	zsh-autosuggestions
	fzf
	k
)
source ~/.zshrc
p10k
"



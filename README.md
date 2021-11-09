# setup-zsh

<br>

> run script setup

```
bash < <(curl https://raw.githubusercontent.com/MR3MMZ/setup-zsh/main/script.bash)
```

```
curl -s https://raw.githubusercontent.com/MR3MMZ/setup-zsh/main/script.bash | bash -s --
```
<br>

> install zsh
```
sudo dnf install zsh
```
<br>

> install "oh my zsh"
```
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
```
<br>

> set shell zsh
```
chsh -s $(which zsh)
```
<br>

> plugins
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
<br>

> set theme in zshrc
```
ZSH_THEME="powerlevel10k/powerlevel10k"
```
<br>

> set plugins
```
plugins=(
  zsh-syntax-highlighting
  fzf
  k
  zsh-autosuggestions
)
```
<br>

> setup theme 
```
p10k configure
```
<br>

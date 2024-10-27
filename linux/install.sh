# prerequisite: zsh, autojump, starship, pixi

# configure zsh
# chsh -s "$(which zsh)"
if [ ! -d ~/.zplug ]; then
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

if [ ! -f ~/.config/starship.toml ]; then
    cp ./starship/starship.toml ~/.config/starship.toml
fi

if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    cp ./tmux/.tmux.conf ~/.tmux.conf
    tmux source ~/.tmux.conf
fi
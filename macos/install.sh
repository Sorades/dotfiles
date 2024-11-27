# brew install, if not installed
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

ZSH_PLUGIN_PATH=~/.zsh_plugins

# 1. if no .zshrc, create one
if [ ! -f ~/.zshrc ]; then
  touch ~/.zshrc
fi

# install zsh plugins
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git $ZSH_PLUGIN_PATH/fast-syntax-highlighting
git clone https://github.com/zpm-zsh/ls.git $ZSH_PLUGIN_PATH/ls
brew install zsh-autosuggestions
brew install autojump


# 2. source zsh plugins
echo "autoload -Uz compinit" >> ~/.zshrc
echo "compinit" >> ~/.zshrc
echo "ZSH_PLUGIN_PATH=~/.zsh_plugins" >> ~/.zshrc
echo "source \$ZSH_PLUGIN_PATH/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" >> ~/.zshrc
echo "source \$ZSH_PLUGIN_PATH/ls/ls.plugin.zsh" >> ~/.zshrc
echo "source \$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo "[ -f \$(brew --prefix)/etc/profile.d/autojump.sh ] && . \$(brew --prefix)/etc/profile.d/autojump.sh" >> ~/.zshrc
echo "FPATH=\$(brew --prefix)/share/zsh-completions:\$FPATH" >> ~/.zshrc
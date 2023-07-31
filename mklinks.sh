ln -sfn ~/dotfiles/nvim ~/.config/nvim
ln -sfn ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
# create symlink to the binary so that it can be run in any terminal
if [[ $(uname -s) = "Linux" ]]; then
    echo "Detected Linux"
    echo "linking kitty.app to /usr/local/bin"
    sudo ln -sfn ~/.local/kitty.app/bin/kitty /usr/local/bin/
fi
ln -sfn ~/dotfiles/kitty/ ~/.config/kitty

#!bin/bash
################################################################################
#
# Kaizen setup.bash
#
# Setup Packer, Nvim, Bashrc
#
################################################################################

echo ""
echo "Kaizen Setup!"
echo ""

# Install Packer
#git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
if [ ! -d "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
    git clone --depth 1 https://github.com/wbthomason/packer.nvim "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
else
    echo "Packer Installed!"
fi

# Nvim setup
unlink ~/.config/nvim
#rm -rf ~/.local/share/nvim
ln -s ~/workspace/kaizen/nvim-davro ~/.config/nvim

################################################################################
#
# Define the lines to be added to .bashrc
#
################################################################################

# Nvim to binary
alias_line="alias nvim='~/workspace/apps/nvim/nvim-linux64/bin/nvim'"
if ! grep -Fxq "$alias_line" ~/.bashrc; then
    echo "$alias_line" >> ~/.bashrc
    echo "Added alias line to ~/.bashrc"
else
    echo "Alias line already exists in ~/.bashrc"
fi

# vim - nvim
vim_alias_line="alias vim='nvim'"
if ! grep -Fxq "$vim_alias_line" ~/.bashrc; then
    echo "$vim_alias_line" >> ~/.bashrc
    echo "Vim Nvim Added alias line to ~/.bashrc"
else
    echo "Vim Nvim Alias line already exists in ~/.bashrc"
fi


# Bind tmux-sessionizer
bind_line='bind -x "\"\C-f\": bash ~/workspace/kaizen/tmux-sessionizer;"'
if ! grep -Fxq "$bind_line" ~/.bashrc; then
    echo "$bind_line" >> ~/.bashrc
    echo "Added bind line to ~/.bashrc"
else
    echo "Bind line already exists in ~/.bashrc"
fi

# Reload the ~/.bashrc to apply changes, only works for script not bash session
source ~/.bashrc

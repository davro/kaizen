#!bin/bash

unlink ~/.config/nvim
#rm -rf ~/.local/share/nvim
ln -s ~/workspace/kaizen/nvim-davro ~/.config/nvim

ls -l ~/.config/nvim/


# Define the lines to be added
alias_line="alias nvim='~/workspace/apps/nvim/nvim-linux64/bin/nvim'"
bind_line='bind -x "\"\C-f\": bash ~/workspace/kaizen/tmux-sessionizer;"'

# Check if the alias line exists in ~/.bashrc
if ! grep -Fxq "$alias_line" ~/.bashrc; then
    echo "$alias_line" >> ~/.bashrc
    echo "Added alias line to ~/.bashrc"
else
    echo "Alias line already exists in ~/.bashrc"
fi

# Check if the bind line exists in ~/.bashrc
if ! grep -Fxq "$bind_line" ~/.bashrc; then
    echo "$bind_line" >> ~/.bashrc
    echo "Added bind line to ~/.bashrc"
else
    echo "Bind line already exists in ~/.bashrc"
fi

# Reload the ~/.bashrc to apply changes
source ~/.bashrc

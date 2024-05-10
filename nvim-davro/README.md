### Davro Development Environment (Nvim DDE)

# Shortcuts/Mappings
leader u        undotree

**Harpoon**
leader a        mark.add_file
ctrl-e          ui.toggle_quick_menu

**Telescope**
leader ps       Grep
leader pf       builtin.find_files, {})
leader vh       builtin.help_tags
C-p             builtin.git_files

**Vim**
ctrl-w      navigate nvim-tree split/vsplits windows


# Prerequisites
install [ripgrep](https://github.com/BurntSushi/ripgrep).

For anyone that is interested in my vimrc, i will have a commit log below
documenting each one of my commits (easy to C-f the change you want to know
about though i would just suggest `git log -S`).

# Install Node
npm node v20

https://github.com/nodesource/distributions#debinstall

curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

# Install Nerd Font

You need to have a patched font installed.

1.) Download a Nerd Font
2.) Unzip and copy to ~/.fonts
3.) Run the command fc-cache -fv to manually rebuild the font cache

https://www.nerdfonts.com/
https://gist.github.com/matthewjberger/7dd7e079f282f8138a9dc3b045ebefa0

# Install Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# References
https://stackoverflow.com/questions/75906887/file-init-lua-script-in-neovim-not-working
https://github.com/neovim/neovim/releases/tag/stable?ref=itsfoss.com
https://github.com/wbthomason/packer.nvim
https://github.com/nvim-telescope/telescope.nvim
https://github.com/rose-pine/neovim
https://github.com/nvim-treesitter/nvim-treesitter
https://github.com/ThePrimeagen/harpoon
https://github.com/VonHeikemen/lsp-zero.nvim
https://github.com/nvim-tree/nvim-tree.lua
https://github.com/romgrk/barbar.nvim

Vim motions
https://vimdoc.sourceforge.net/htmldoc/motion.html

Vim open filename under cursor
https://vi.stackexchange.com/questions/3364/open-filename-under-cursor-like-gf-but-in-a-new-tab-or-split

# Based on the ThePrimeagen
https://github.com/ThePrimeagen/init.lua



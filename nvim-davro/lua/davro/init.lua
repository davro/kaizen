require("davro.packer")
require("davro.set")
require("davro.remap")

-- DO NOT INCLUDE THIS
--vim.opt.rtp:append("~/personal/streamer-tools")
-- DO NOT INCLUDE THIS

local augroup = vim.api.nvim_create_augroup
local ThePrimeagenGroup = augroup('ThePrimeagen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25


-- LSP
--require('lsp')
--require('lsp.bash')
--require('lsp.php')
--require('lsp.lua')
--require('lsp.python')
--require('lsp.vim')
--require('lsp.json')
--require('lsp.yaml')
--require('lsp.html')
--require('lsp.css')
--require('lsp.tsserver')
--require('lsp.tailwindcss')
--require('lsp.omnisharp')
--require('lsp.graphql')
--require('lsp.volar')

print ("KAIZEN: leader: ps(grep), pf(find), u(undo), NvimTree(ctrl+e), BarBar, Harpoon, Telescope, Treesitter, LSP, zenmode")

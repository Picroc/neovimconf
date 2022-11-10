vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.breakindent = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false

vim.keymap.set('n', '<space>w', '<cmd>w<cr>', {desc = 'Save'})
vim.g.mapleader = ' '
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.cmd('colorscheme gruvbox')

vim.g.coc_global_extensions = {'coc-tsserver', 'coc-rls', 'coc-yank', 'coc-prettier'}

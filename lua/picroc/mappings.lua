local keymap = vim.keymap

keymap.set('n', '<C-b>', ':NvimTreeToggle<Return>', { silent = true })

keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-l>', '<C-w>l')

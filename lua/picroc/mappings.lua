local keymap = vim.keymap

vim.cmd([[:tnoremap <Esc> <C-\><C-n>]])

keymap.set('n', '<C-b>', ':NvimTreeToggle<Return>', { silent = true })

keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-l>', '<C-w>l')
keymap.set('n', '<C-/>', ':ToggleTerm direction=float<Return>')

keymap.set('n', 'gd', '<Plug>(coc-definition)')
keymap.set('n', 'gi', '<Plug>(coc-implementation)')
keymap.set('n', 'gy', '<Plug>(coc-type-definition)')
keymap.set('n', 'gr', '<Plug>(coc-references)')

vim.cmd(
[[function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"]]
)

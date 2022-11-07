
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print('Installing packer...')
  local packer_url = 'https://github.com/wbthomason/packer.nvim'
  vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
  print('Done.')

  vim.cmd('packadd packer.nvim')
  install_plugins = true
end

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use { "ellisonleao/gruvbox.nvim" }
	use { 'neoclide/coc.nvim', branch = 'release', run = 'npm install'}
	use 'plasticboy/vim-markdown'
	use 'airblade/vim-gitgutter'
	use 'nvim-lualine/lualine.nvim'
	use 'scrooloose/nerdtree'
	use 'ryanoasis/vim-devicons'

	if install_plugins then
		require('packer').sync()
	end
end)

if install_plugins then
	return
end


require('lualine').setup({
	options = {
		theme = 'gruvbox',
	}
})

vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeIgnore = {}
vim.g.NERDTreeStatusline = ''
vim.cmd([[nnoremap <silent> <C-b> :NERDTreeToggle<CR>]])

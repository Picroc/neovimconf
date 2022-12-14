
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
	use 'ryanoasis/vim-devicons'
	use {
  	'nvim-tree/nvim-tree.lua',
  	requires = {
    	'nvim-tree/nvim-web-devicons', -- optional, for file icons
  	},
  	tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use 'tpope/vim-fugitive'
	use { 'junegunn/fzf', run = ":call fzf#install()" }
  use { 'junegunn/fzf.vim' }
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup{
			shell = vim.o.zsh,
			direction = 'float',
		}
  end}

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

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


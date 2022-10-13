--[[--------------------------------------]]--
--     plugins + packer - configuration     --
--[[--------------------------------------]]--

local fn = vim.fn

-- automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
  print 'Installing packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

-- reload neovim whenever plugins.lua is saved
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- use protected call to avoid errors on first boot
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    return
end

-- force packer into a popup
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
      end,
  },
}

-- plugins
return packer.startup(function(use)

  use {
    'wbthomason/packer.nvim',             -- the plugin manager itself
    'nvim-treesitter/nvim-treesitter',    -- the based syntax highlighter
  }

  use { 'catppuccin/nvim',                -- the awesome colorscheme
	  as = 'catppuccin',
	  config = function()
		  vim.g.catppuccin_flavour = 'mocha'
		  require('catppuccin').setup()
		  vim.api.nvim_command 'colorscheme catppuccin'
	  end
  }

  -- automatically configure after cloning packer
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end

end)

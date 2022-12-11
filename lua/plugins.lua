local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use { "wbthomason/packer.nvim", opt = true }
	-- nvim-tree
	use {
  		'nvim-tree/nvim-tree.lua',
		wants = "nvim-web-devicons", 
		tag = 'nightly',
		config = function()
			require("nvim-web-devicons").setup()
			require("nvim-tree").setup({
				open_on_setup = true,

			})
		end	
	}
	-- lsp
	use "neovim/nvim-lspconfig"

	-- cmp
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	-- {} とか自動で閉じてくれるやつ
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use { "fatih/vim-go", opt = true, ft = { "go" } }

	use "github/copilot.vim"

	use "tpope/vim-commentary"
	-- theme
	use "EdenEast/nightfox.nvim"


	use { 
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	if packer_bootstrap then
    		require('packer').sync()
  	end
end)

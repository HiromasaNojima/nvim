require("nvim-tree").setup({
	open_on_setup = true,
	open_on_setup_file = true,
	open_on_tab = true,
})

vim.api.nvim_set_keymap("n", "<C-b>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
-- https://github.com/nvim-tree/nvim-tree.lua/wiki/Auto-Close

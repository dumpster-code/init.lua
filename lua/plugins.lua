--  To update plugins, you can run
--    :Lazy update
require("lazy").setup({
	require("plugins/autopairs"),
	require("plugins/bufferline"),
	require("plugins/cmp"),
	--require("plugins/conform"),
	require("plugins/dev-icons"),
	require("plugins/gitsigns"),
	require("plugins/lspconfig"),
	require("plugins/lualine"),			
	require("plugins/mini"),
	require("plugins/nvim_tree"),
	require("plugins/sneak"),
	require("plugins/telescope"),
	require("plugins/todo_comments"),
	require("plugins/tokyonight"),
	require("plugins/treesitter"),
	require("plugins/undotree"),
	require("plugins/which_key"),

}, {
	ui = {
		-- If you have a Nerd Font, set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

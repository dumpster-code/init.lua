--  To update plugins, you can run
--    :Lazy update
require("lazy").setup({
	{ "tpope/vim-sleuth" }, -- Detect tabstop and shiftwidth automatically

	-- NOTE: Plugins can also be added by using a table,
	-- with the first argument being the link and the following
	-- keys can be used to configure plugin behavior/loading/etc.
	--
	-- Use `opts = {}` to force a plugin to be loaded.
	--
	--  This is equivalent to:
	--    require('Comment').setup({})

	-- "gc" to comment visual regions/lines
	{ "numToStr/Comment.nvim", opts = {} },
	{ "nvim-tree/nvim-web-devicons", opts = {} },
	-- modular approach: using `require 'path/name'` will
	-- include a plugin definition from file lua/path/name.lua

	require("plugins/autopairs"),
	require("plugins/bufferline"),
	require("plugins/bufremove"),
	require("plugins/cmp"),
	require("plugins/conform"),
	require("plugins/gitsigns"),
	require("plugins/lspconfig"),
	require("plugins/lualine"),
	require("plugins/mini"),
	require("plugins/nvim_tree"),
	require("plugins/telescope"),
	require("plugins/todo_comments"),
	require("plugins/tokyonight"),
	require("plugins/treesitter"),
	require("plugins/which_key"),

	-- The following two comments only work if you have downloaded the kickstart repo, not just copy pasted the
	-- init.lua. If you want these files, they are in the repository, so you can just download them and
	-- put them in the right spots if you want.

	-- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for kickstart
	--
	--  Here are some example plugins that I've included in the kickstart repository.
	--  Uncomment any of the lines below to enable them (you will need to restart nvim).
	--
	-- require 'plugins.debug',
	-- require 'plugins.indent_line',

	-- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
	--    This is the easiest way to modularize your config.
	--
	--  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
	--    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
	-- { import = 'custom.plugins' },
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

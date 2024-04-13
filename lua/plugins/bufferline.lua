vim.keymap.set(
	"n",
	"<leader>bq",
	":BufferLineGoToBuffer 1<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 1" }
)
vim.keymap.set(
	"n",
	"<leader>bw",
	":BufferLineGoToBuffer 2<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 2" }
)
vim.keymap.set(
	"n",
	"<leader>be",
	":BufferLineGoToBuffer 3<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 3" }
)
vim.keymap.set(
	"n",
	"<leader>ba",
	":BufferLineGoToBuffer 4<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 4" }
)
vim.keymap.set(
	"n",
	"<leader>bs",
	":BufferLineGoToBuffer 5<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 5" }
)
vim.keymap.set(
	"n",
	"<leader>bd",
	":BufferLineGoToBuffer 6<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 6" }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>bl",
	":BufferLineCloseLeft<CR>",
	{ noremap = true, silent = true, desc = "Close [L]eft Buffers" }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>br",
	":BufferLineCloseRight<CR>",
	{ noremap = true, silent = true, desc = "Close [R]ight Buffers" }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>bt",
	":BufferLineSortByDirectory<CR>",
	{ noremap = true, silent = true, desc = "Sor[t] by Directory" }
)

return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
    { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
    { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete Other Buffers" },
    { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
    { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
	{ "<leader>bx", function() require("mini.bufremove").delete(0, true) end, desc = "Delete Buffer (Force)" },
  },
  opts = {
    options = {
      -- stylua: ignore
      close_command = function(n) require("mini.bufremove").delete(n, false) end,
      -- stylua: ignore
      right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
      diagnostics = "nvim_lsp",
      always_show_bufferline = false,
		offsets = {
		{
			filetype = "NvimTree",
			highlight = "Directory",
			text_align = "left",
		},
		},
		numbers = function(opts)
			return opts.ordinal
		end,
	},
	}	
}

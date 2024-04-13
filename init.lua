vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = false

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local script_path = vim.fn.expand("<sfile>:p:h")
__plugin_path= script_path .. "/install/plugins"
__lazy_path = script_path .. "/install/lazy"

__share_path = script_path .. "/share"
__state_path = script_path .. "/state"

vim.opt.rtp:prepend(__lazy_path)

require("options")
require("keymaps")
require("plugins")
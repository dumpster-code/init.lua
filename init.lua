vim.g.mapleader = " "

vim.keymap.set("n", "Q", "<nop>")

-- Relative numbers
vim.wo.number = true
vim.wo.relativenumber = true

----------------------------------------- Code Navigation -----------------------------------------

-- Focus cursor in middle when scrolling
vim.api.nvim_set_keymap('n', '<C-d>', 'zz<C-d>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-u>', 'zz<C-u>', {noremap = true, silent = true})

-- Focus cursor in middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Never have less than X number of lines below or above
vim.opt.scrolloff = 15

-- Window navigations
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})

------------------------------------------ Code Editing ------------------------------------------

-- Additional Escape
vim.keymap.set("n", "<C-c>", "<Esc>")

-- Copy to clipboard
vim.opt.clipboard = "unnamed"
vim.cmd([[set clipboard=unnamedplus]])

-- Alt + ArrowUp/ArrowDown
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep paste buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Replace all under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Indenting
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- No line wrapping
vim.opt.wrap = false

-- Modify Searches
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Fast Updates
vim.opt.updatetime = 50

---------------------------------------------- LSP ----------------------------------------------

-- Format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

----------------------------------------------------------------------------------------------------

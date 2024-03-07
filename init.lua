vim.g.mapleader = " "

vim.keymap.set("n", "Q", "<nop>")

-- Relative numbers
vim.wo.number = true
vim.wo.relativenumber = true

----------------------------------------- Code Navigation -----------------------------------------

-- Focus cursor in middle when scrolling
vim.keymap.set('n', '<C-d>', 'zz<C-d>')
vim.keymap.set('n', '<C-u>', 'zz<C-u>')

-- Focus cursor in middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Never have less than X number of lines below or above
vim.opt.scrolloff = 15

-- Window navigations
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

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

------------------------------------------- Telescope -------------------------------------------

vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fa', ':Telescope find_files follow=true no_ignore=true hidden=true<CR>')
vim.keymap.set('n', '<leader>fw', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>')
vim.keymap.set('n', '<leader>fh', ':Telescope help_tags<CR>')
vim.keymap.set('n', '<leader>fo', ':Telescope oldfiles<CR>')
vim.keymap.set('n', '<leader>fz', ':Telescope current_buffer_fuzzy_find<CR>')
vim.keymap.set('n', '<leader>cm', ':Telescope git_commits<CR>')
vim.keymap.set('n', '<leader>gt', ':Telescope git_status<CR>')
vim.keymap.set('n', '<leader>pt', ':Telescope terms<CR>')
vim.keymap.set('n', '<leader>th', ':Telescope themes<CR>')
vim.keymap.set('n', '<leader>ma', ':Telescope marks<CR>')

------------------------------------------------------------------------------------------------

return {
    'akinsho/toggleterm.nvim',
    version = "*",  
    opts = {
        direction = "float",
    },
    vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>ToggleTerm<CR>', { noremap = true, silent = true }),
}
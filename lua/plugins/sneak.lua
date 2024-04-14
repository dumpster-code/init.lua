return {
    'justinmk/vim-sneak',
    
    vim.api.nvim_set_keymap('', 'f', '<Plug>Sneak_f', {}),
    vim.api.nvim_set_keymap('', 'F', '<Plug>Sneak_F', {}),
    vim.api.nvim_set_keymap('', 't', '<Plug>Sneak_t', {}),
    vim.api.nvim_set_keymap('', 'T', '<Plug>Sneak_T', {}),
}
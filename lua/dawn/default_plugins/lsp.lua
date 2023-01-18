-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'diagnostic prev' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'diagnostic next' })

--vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'diagnostic setloclist' })
--vim.keymap.set('n', '<leader>lma', vim.diagnostic.open_float, { desc = 'diagnostic open float' })
lvim.builtin.which_key.mappings['lof'] =
{ '<cmd>lua vim.diagnostic.open_float()<cr>', 'diagnostic open open_float' }

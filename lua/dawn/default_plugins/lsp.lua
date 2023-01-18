-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'diagnostic prev' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'diagnostic next' })

-- deprecated use default keymap gl
lvim.builtin.which_key.mappings['lo'] =
{ '<cmd>lua vim.diagnostic.open_float()<cr>', 'diagnostic open open_float' }

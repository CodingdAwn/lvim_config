--print('load keymaps')

local util = require('dawn.core.util')

-- 关闭当前buffer
lvim.builtin.which_key.mappings["cc"] = { '<cmd>q<CR>', 'quit vim rapid' }

-- 使用jk返回normal模式
vim.keymap.set('i', 'jk', '<ESC>', { desc = 'go to normal mode' })
vim.keymap.set('x', 'jk', '<ESC>', { desc = 'go to normal mode' })
vim.keymap.set('c', 'jk', '<ESC>', { desc = 'go to normal mode' })

lvim.builtin.which_key.vmappings['y'] = { '"+y', 'copy to global clipboard' }
lvim.builtin.which_key.mappings['y'] = { '"+y', 'copy to global clipboard' }
lvim.builtin.which_key.vmappings['p'] = { '"+p', 'paste from global clipboard' }
lvim.builtin.which_key.mappings['p'] = { '"+p', 'paste from global clipboard' }

-- 移动整行
vim.keymap.set('n', '<a-j>', '<cmd>m .+1<CR>', { desc = 'move line down' })
vim.keymap.set('n', '<a-k>', '<cmd>m .-2<CR>', { desc = 'move line up' })

-- 移动到其他windows
vim.keymap.set('n', '<c-h>', '<c-w>h', { desc = 'move windows' })
vim.keymap.set('n', '<c-l>', '<c-w>l', { desc = 'move windows' })
vim.keymap.set('n', '<c-j>', '<c-w>j', { desc = 'move windows' })
vim.keymap.set('n', '<c-k>', '<c-w>k', { desc = 'move windows' })

vim.keymap.set('i', '<c-h>', '<left>', { desc = 'move windows' })
vim.keymap.set('i', '<c-l>', '<right>', { desc = 'move windows' })
vim.keymap.set('i', '<c-j>', '<down>', { desc = 'move windows' })
vim.keymap.set('i', '<c-k>', '<up>', { desc = 'move windows' })

-- deprecated
vim.keymap.set("n", "K", util.show_docs, { desc = 'Hover Documentation', silent = true })

-- cd releated
vim.keymap.set('n', '<a-r>', util.cwd_git_root, { desc = 'cwd to git root' })
lvim.keys.normal_mode['<leader>cof'] = '<cmd>:GitRoot<CR>'
lvim.keys.normal_mode['<leader>cd'] = '<cmd>:CDDOT<CR>'

----------------------------------------------------------------------
-- 在当前光标下输出时间
----------------------------------------------------------------------
lvim.keys.normal_mode['<leader>da'] = '<cmd>:PutDate<CR>'

lvim.builtin.which_key.mappings["t"] = {
    name = "translator & terminal",
}

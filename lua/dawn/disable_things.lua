print('load disable things')
-- disable 一些自带的功能 keymap command等
-- @problem 1: 使用lvim的删除方法不会立即生效需要重启lvim
-- @problem 2: 使用vim自带的方式可以立马生效但是下次启动还有且需要lvimreload

-- disable keymaps
-- leader w 影响所有的wiki的快捷键
lvim.builtin.which_key.mappings['w'] = {}

-- leader c 不想用，而且影响leader cc
lvim.builtin.which_key.mappings['c'] = '<nop>'
--vim.keymap.set('n', '<leader>c', '<nop>')

lvim.builtin.which_key.mappings['e'] = {}
--lvim.builtin.which_key.mappings = {}

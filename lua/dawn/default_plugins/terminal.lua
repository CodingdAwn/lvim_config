--print('load terminal config')
-- <leader>gg also toggle a lazygit
lvim.builtin.terminal.execs[#lvim.builtin.terminal.execs + 1] = { "lazygit", "<leader>tl", "lazygit terminal" }

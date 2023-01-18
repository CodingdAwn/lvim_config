print('load terminal config')
lvim.builtin.terminal.execs[#lvim.builtin.terminal.execs + 1] = { "lazygit", "<leader>tl", "lazygit terminal" }

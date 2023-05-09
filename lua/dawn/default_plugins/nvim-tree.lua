--print('load nvim tree')
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--[[
lvim.builtin.nvimtree.setup.view.mappings.list = {
    { key = { "l", "<CR>", "o" }, action = "edit", mode = "n" },
    { key = "h", action = "close_node" },
    { key = "v", action = "vsplit" },
    { key = "cd", action = "cd" },
    { key = "u", action = "dir_up" }
}
]]

lvim.builtin.which_key.mappings["e"] = {
    name = "nvim-tree",
    c = { "<cmd>NvimTreeFocus<CR>", "NvimTreeFocus" },
    o = { "<cmd>NvimTreeToggle<CR>", "NvimTreeToggle" },
    f = { "<cmd>NvimTreeFindFile<CR>", "NvimTreeFindFile" },
    r = { "<cmd>NvimTreeRefresh<CR>", "NvimTreeRefresh" },
}

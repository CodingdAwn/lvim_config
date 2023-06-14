--print('load nvim tree')
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

lvim.builtin.which_key.mappings["e"] = {
    name = "nvim-tree",
    c = { "<cmd>NvimTreeFocus<CR>", "NvimTreeFocus" },
    o = { "<cmd>NvimTreeToggle<CR>", "NvimTreeToggle" },
    f = { "<cmd>NvimTreeFindFile<CR>", "NvimTreeFindFile" },
    r = { "<cmd>NvimTreeRefresh<CR>", "NvimTreeRefresh" },
}

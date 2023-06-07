-- 这里先这样修改吧 lunarvim的filetype cs.lua中本身加载了一次omnisharp
-- 这里还需要先stop掉omnisharp 再开mono
-- 直接在lunarvim中修改 而且mono和.netcore的项目 可能不兼容 所以先这样用着 等以后更了解后 再考虑其他办法
--vim.lsp.stop_client(vim.lsp.get_active_clients(), true)
--require("lvim.lsp.manager").setup("omnisharp_mono")

-- 手动设置root_dir，当前的csharp_lsp不会自动找到sln
--[[
local nvim_lsp = require 'lspconfig'
local opts = {
    root_dir = function(startpath)
        --print("load csharp_ls" .. startpath)
        return nvim_lsp.util.root_pattern("*.sln")(startpath)
    end,
}
require("lvim.lsp.manager").setup("csharp_ls", opts)
]]
require("lvim.lsp.manager").setup("omnisharp", {})

-- 这里先这样修改吧 lunarvim的filetype cs.lua中本身加载了一次omnisharp
-- 这里还需要先stop掉omnisharp 再开mono
-- 直接在lunarvim中修改 而且mono和.netcore的项目 可能不兼容 所以先这样用着 等以后更了解后 再考虑其他办法
--vim.lsp.stop_client(vim.lsp.get_active_clients(), true)
--require("lvim.lsp.manager").setup("omnisharp_mono")

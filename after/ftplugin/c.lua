-- clangd switch source and header file
lvim.lsp.buffer_mappings.normal_mode['<leader>aa'] = {
    function()
        vim.cmd([[ClangdSwitchSourceHeader]])
    end, "switch source header file"
}
lvim.lsp.buffer_mappings.normal_mode['<leader>av'] = {
    function()
        vim.cmd('vsplit')
        vim.cmd([[ClangdSwitchSourceHeader]])
    end, "switch source header file"
}
lvim.lsp.buffer_mappings.normal_mode['<leader>ah'] = {
    function()
        vim.cmd('split')
        vim.cmd([[ClangdSwitchSourceHeader]])
    end, "switch source header file"
}

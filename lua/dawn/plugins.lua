--print('load plugins')
lvim.plugins = {
    -- translator plugins
    { "CodingdAwn/vim-translator" },
    -- wiki
    { "vimwiki/vimwiki" },
    -- colorscheme
    { "olimorris/onedarkpro.nvim" },
    --[[
    -- markdown highlight
    { 'plasticboy/vim-markdown',
        dependencies = { 'godlygeek/tabular', },
    },
    ]]
    -- markdown preview
    {
        "iamcco/markdown-preview.nvim",
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    -- git
    { "tpope/vim-fugitive" },

    -- preview definition
    {
        "rmagatti/goto-preview",
        config = function()
            require('goto-preview').setup {
                width = 120,             -- Width of the floating window
                height = 25,             -- Height of the floating window
                default_mappings = true, -- Bind default mappings
                debug = false,           -- Print debug information
                opacity = nil,           -- 0-100 opacity level of the floating window where 100 is fully transparent.
                post_open_hook = nil     -- A function taking two arguments, a buffer and a window to be ran as a hook.
                -- You can use "default_mappings = true" setup option
                -- Or explicitly set keybindings
                -- vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
                -- vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
                -- vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
            }
        end
    },

    -- tabnine is a AI pulgin
    --[[
    {
        "tzachar/cmp-tabnine",
        build = "./install.sh",
        dependencies = "hrsh7th/nvim-cmp",
        event = "InsertEnter",
    },
    --]]
    -- signature
    {
        "ray-x/lsp_signature.nvim",
        event = "BufRead",
        config = function() require "lsp_signature".on_attach() end,
    },
}

-- 放在上面的话 需要使用LvimReload之后 才能立马生效
reload('dawn.configs.vim-translator').setup()
reload('dawn.configs.vimwiki').setup()
reload('dawn.configs.onedarkpro').setup()
reload('dawn.configs.fugitive').setup()

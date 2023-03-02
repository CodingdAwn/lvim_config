-- print('load plugins')
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
}

-- 放在上面的话 需要使用LvimReload之后 才能立马生效
require('dawn.configs.vim-translator').setup()
require('dawn.configs.vimwiki').setup()
require('dawn.configs.onedarkpro').setup()
require('dawn.configs.fugitive').setup()

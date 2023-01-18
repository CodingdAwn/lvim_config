-- print('load plugins')
lvim.plugins = {
    -- translator plugins
    { "CodingdAwn/vim-translator" },
    -- wiki
    { "vimwiki/vimwiki" },
    -- colorscheme
    { "olimorris/onedarkpro.nvim" },
}

-- 放在plugins里面的话 需要使用LvimReload之后 才能立马生效
require('dawn.configs.vim-translator').setup()
require('dawn.configs.vimwiki').setup()
require('dawn.configs.onedarkpro').setup()

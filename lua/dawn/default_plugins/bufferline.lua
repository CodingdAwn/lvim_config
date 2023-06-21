--print('load bufferline')
lvim.builtin.bufferline.options.indicator = {
    icon = lvim.icons.ui.BoldLineLeft, -- this should be omitted if indicator style is not 'icon'
    style = "underline",               -- can also be 'underline'|'none',
}

--lvim.builtin.bufferline.options.numbers = "ordinal"

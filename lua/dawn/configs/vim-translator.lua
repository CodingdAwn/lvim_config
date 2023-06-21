local M = {}

function M.setup()
    --print('setup vim translator')

    lvim.builtin.which_key.mappings["t"] = {
        name = "translator",
        w = { '<cmd>:TranslateW<CR>', 'translator with float windows' },
        t = { '<cmd>:Translate<CR>', 'translator with message' }
    }

    lvim.builtin.which_key.vmappings["t"] = {
        name = "translator",
        w = { '<cmd>:TranslateW<CR>', 'translator with float windows' },
        t = { '<cmd>:Translate<CR>', 'translator with message' }
    }
end

return M

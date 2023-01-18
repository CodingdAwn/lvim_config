local M = {}

function M.setup()
    --print('setup vim translator')
    lvim.keys.normal_mode['<leader>tw'] = '<cmd>:TranslateW<CR>'
    lvim.keys.visual_mode['<leader>tw'] = '<cmd>:TranslateW<CR>'
end

return M

local M = {}

-- change work dir to git root
function M.cwd_git_root()
    vim.api.nvim_command('cd %:p:h')
    local git_root_path =
    require("plenary.job"):new({ command = "git", args = { "rev-parse", "--show-toplevel" } }):sync()[1]
    vim.fn.chdir(git_root_path)
    print('current cwd is ' .. git_root_path)
end

-- Use K to show documentation in preview window
-- deprecated
function M.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    else
        vim.lsp.buf.hover()
    end
end

-- 直接打开neovim config init.lua 并且设置好cwd dir
function M.home_neovim_config()
    vim.api.nvim_command('e ~/.config/lvim/config.lua')
    M.cwd_git_root()
end

function M.cd_current_buff_directory()
    vim.api.nvim_command('cd %:p:h')
    vim.api.nvim_command('pwd')
end

----------------------------------------------------------------------
-- 在当前光标下输出时间
----------------------------------------------------------------------
function M.put_date_at_cursor()
    local date_string = vim.fn.strftime('%Y-%m-%d')
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, { date_string })
end

----------------------------------------------------------------------
-- 将windows换行符转换成unix的 ctrl-v ctrl-m打出^M"
----------------------------------------------------------------------
--[[
function M.transfer_lf()
  vim.api.nvim_command(':%s/$//g')
end
]]
return M

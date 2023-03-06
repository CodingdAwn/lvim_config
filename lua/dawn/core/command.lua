local util = require('dawn.core.util')

-- command

-- cd to git's root directory
vim.api.nvim_create_user_command('GitRoot', util.cwd_git_root, {})
-- cd to current buff's directory
vim.api.nvim_create_user_command('CDDOT', util.cd_current_buff_directory, {})
-- Put current date at cursor pos
vim.api.nvim_create_user_command('PutDate', util.put_date_at_cursor, {})
-- transfer windows crlf to linux lf
--vim.api.nvim_create_user_command('TLF', util.transfer_lf, {})

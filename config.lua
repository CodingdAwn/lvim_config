lvim.log.level = "info"
-- general
lvim.format_on_save = {
    enabled = true,
    pattern = "*.lua",
    timeout = 1000,
}

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.ctive = true

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

reload('dawn')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'diagnostic prev' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'diagnostic next' })

lvim.builtin.which_key.mappings['lo'] = { "<cmd>lua vim.diagnostic.open_float()<CR>", "diagnostic open float" }

--lvim.keys.noremap['gv'] = '<cmd>lua require"telescope.builtin".lsp_definitions({jump_type="vsplit"})<CR>'
-- 这个还有问题 使用后 可能会导致vim的排版乱了
vim.keymap.set('n', 'gv', '<cmd>lua require"telescope.builtin".lsp_definitions({jump_type="vsplit"})<CR>',
    { desc = 'vsplit definitions' })
vim.keymap.set('n', 'gh', '<cmd>lua require"telescope.builtin".lsp_definitions({jump_type="split"})<CR>',
    { desc = 'split definitions' })

-- c sharp lsp config
--local function on_attach(client, bufnr)
local function on_attach(client, _)
    if client.name ~= 'omnisharp' then
        return
    end

    if vim.g.loaded_mono == 2 then
        return
    end

    vim.g.loaded_mono = 2
    print('load mono first')
    client.server_capabilities.semanticTokensProvider = {
        full = vim.empty_dict(),
        legend = {
            tokenModifiers = { "static_symbol" },
            tokenTypes = {
                "comment",
                "excluded_code",
                "identifier",
                "keyword",
                "keyword_control",
                "number",
                "operator",
                "operator_overloaded",
                "preprocessor_keyword",
                "string",
                "whitespace",
                "text",
                "static_symbol",
                "preprocessor_text",
                "punctuation",
                "string_verbatim",
                "string_escape_character",
                "class_name",
                "delegate_name",
                "enum_name",
                "interface_name",
                "module_name",
                "struct_name",
                "type_parameter_name",
                "field_name",
                "enum_member_name",
                "constant_name",
                "local_name",
                "parameter_name",
                "method_name",
                "extension_method_name",
                "property_name",
                "event_name",
                "namespace_name",
                "label_name",
                "xml_doc_comment_attribute_name",
                "xml_doc_comment_attribute_quotes",
                "xml_doc_comment_attribute_value",
                "xml_doc_comment_cdata_section",
                "xml_doc_comment_comment",
                "xml_doc_comment_delimiter",
                "xml_doc_comment_entity_reference",
                "xml_doc_comment_name",
                "xml_doc_comment_processing_instruction",
                "xml_doc_comment_text",
                "xml_literal_attribute_name",
                "xml_literal_attribute_quotes",
                "xml_literal_attribute_value",
                "xml_literal_cdata_section",
                "xml_literal_comment",
                "xml_literal_delimiter",
                "xml_literal_embedded_expression",
                "xml_literal_entity_reference",
                "xml_literal_name",
                "xml_literal_processing_instruction",
                "xml_literal_text",
                "regex_comment",
                "regex_character_class",
                "regex_anchor",
                "regex_quantifier",
                "regex_grouping",
                "regex_alternation",
                "regex_text",
                "regex_self_escaped_character",
                "regex_other_escape",
            },
        },
        range = true,
    }
end

lvim.lsp.on_attach_callback = on_attach

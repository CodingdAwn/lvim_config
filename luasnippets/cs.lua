local function simple_restore(args, _)
    return sn(nil, { i(1, args[1]), i(2, "user_text") })
end

local function simple_restore2(args, _)
    return sn(nil, { i(1, args[1]), r(2, "dyn", i(nil, "user_text")) })
end

-- complicated function for dynamicNode.
local function jdocsnip(args, _, old_state)
    -- !!! old_state is used to preserve user-input here. DON'T DO IT THAT WAY!
    -- Using a restoreNode instead is much easier.
    -- View this only as an example on how old_state functions.
    local nodes = {
        t({ "/// <summary>", "/// " }),
        i(1, "A short Description"),
        t({ "", "" }),
    }

    -- These will be merged with the snippet; that way, should the snippet be updated,
    -- some user input eg. text can be referred to in the new snippet.
    local param_nodes = {}

    if old_state then
        nodes[2] = i(1, old_state.descr:get_text())
    end
    param_nodes.descr = nodes[2]

    -- At least one param.
    if string.find(args[2][1], ", ") then
        vim.list_extend(nodes, { t({ "/// <summary>", "" }) })
    end

    local insert = 2
    for indx, arg in ipairs(vim.split(args[2][1], ", ", true)) do
        -- Get actual name parameter.
        arg = vim.split(arg, " ", true)[2]
        if arg then
            local inode
            -- if there was some text in this parameter, use it as static_text for this new snippet.
            if old_state and old_state[arg] then
                inode = i(insert, old_state["arg" .. arg]:get_text())
            else
                inode = i(insert)
            end
            vim.list_extend(
                nodes,
                { t({ '/// <param name="' .. arg .. "" }), inode, t({ '"></param>', "" }) }
            )
            param_nodes["arg" .. arg] = inode

            insert = insert + 1
        end
    end

    if args[1][1] ~= "void" then
        local inode
        if old_state and old_state.ret then
            inode = i(insert, old_state.ret:get_text())
        else
            inode = i(insert)
        end

        vim.list_extend(
            nodes,
            { t({ "/// <returns></returns>" }) }
        )
        param_nodes.ret = inode
        insert = insert + 1
    end

    local snip = sn(nil, nodes)
    -- Error on attempting overwrite.
    snip.old_state = param_nodes
    return snip
end

return {
    -- Very long example for a java class.
    s("fn", {
        d(6, jdocsnip, { 2, 4, 5 }),
        t({ "", "" }),
        c(1, {
            t("public "),
            t("private "),
        }),
        c(2, {
            t("void"),
            t("string"),
            t("char"),
            t("int"),
            t("double"),
            t("boolean"),
            i(nil, ""),
        }),
        t(" "),
        i(3, "myFunc"),
        t("("),
        i(4),
        t(")"),
        c(5, {
            t(""),
            sn(nil, {
                t({ "", " throws " }),
                i(1),
            }),
        }),
        t({ " {", "\t" }),
        i(0),
        t({ "", "}" }),
    }),
}

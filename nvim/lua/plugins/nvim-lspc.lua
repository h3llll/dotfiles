return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspc = require("lspconfig")

        lspc.lua_ls.setup({})   -- lua
        lspc.clangd.setup({})   -- c/c++
        lspc.zls.setup({})      -- zig
        lspc.mesonlsp.setup({}) -- meson

        -- Keybindings

        -- hover info
        vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, {})

        -- rename all refrences to symbol
        vim.keymap.set('i', '<leader>rn', vim.lsp.buf.rename, {})

        -- format buffer
        vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, {})

        -- view avalible code actions
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

        -- highlight symbol under cursor
        vim.keymap.set('n', '<leader>dh', vim.lsp.buf.document_highlight, {})

        -- clear highlight
        vim.keymap.set('n', '<leader>uh', vim.lsp.buf.clear_references, {})

        -- go to definition
        vim.keymap.set('n', '<leader>gdf', vim.lsp.buf.definition, {})

        -- go to declaration
        vim.keymap.set('n', '<leader>gdc', vim.lsp.buf.declaration, {})
    end,
}

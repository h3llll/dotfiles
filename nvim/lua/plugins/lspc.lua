-- Show documentation (hover)
vim.keymap.set("n", "H", vim.lsp.buf.hover, {})

-- Go to definition
vim.keymap.set("n", "GD", vim.lsp.buf.definition, {})

-- Rename
vim.keymap.set("n", "RN", vim.lsp.buf.rename, {})

-- Code actions
vim.keymap.set("n", "CA", vim.lsp.buf.code_action, {})

-- Show diagnostic messages
vim.keymap.set("n", "D", vim.diagnostic.open_float, {})

-- Format
vim.keymap.set("n", "F", vim.lsp.buf.format, {})

vim.diagnostic.config({
    float = {
        border = "rounded",
        width = 80,
    },
})

return {
    {
        "williamboman/mason.nvim",
        config = true,
    },
    {
        "williamboman/mason-lspconfig.nvim",

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "luau_lsp",
                    "clangd",
                    "mesonlsp",
                    "zls",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capbs = require("cmp_nvim_lsp").default_capabilities()

            local lspc = require("lspconfig")
            lspc.luau_lsp.setup({
                capabilities = capbs,
            })
            lspc.clangd.setup({
                capabilities = capbs,
            })
            lspc.zls.setup({
                capabilities = capbs,
            })
            lspc.mesonlsp.setup({
                capabilities = capbs,
            })
            lspc.bashls.setup({
                capabilities = capbs,
            })
        end,
    },
}

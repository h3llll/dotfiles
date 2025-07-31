-- Custom Highlights
vim.cmd([[
    hi NoiceCmdlinePopupBorder guifg=#cba6f7 guibg=#11111e
    hi NoiceCmdlinePopup guifg=#cdd6f4 guibg=#11111e
    hi NoiceCmdlineIcon guifg=#cba6f7
    hi NoiceCmdline guifg=#cdd6f4 guibg=#11111e
    hi NoiceCmdlinePrompt guifg=#cdd6f4
    hi NoiceCmdlinePopupTitle guifg=#cba6f7
]])

return {
    "folke/noice.nvim",
    config = function()
        require("noice").setup({
            cmdline = {
                enabled = true,
                view = "cmdline_popup",
                format = {
                    cmdline = { pattern = "^:", icon = "", lang = "vim" },
                    search_down = { kind = "search", pattern = "^/", icon = "🔍▼", lang = "regex" },
                    search_up = { kind = "search", pattern = "^%?", icon = "🔍▲", lang = "regex" },
                },
            },
        })
    end,
    dependencies = {
        "MunifTanjim/nui.nvim",
    }
}

return {
    "andweeb/presence.nvim",
    config = function()
        require("presence").setup({
            auto_update         = true,
            neovim_image_text   = "nvim ",
            main_image          = "nvim",
            editing_text        = "editing %s",
            file_explorer_text  = "browsing %s",
            git_commit_text     = "committing ",
        })
    end,
}

return
{
    "lukas-reineke/indent-blankline.nvim",
    version = "v3.*",
    config = function()
        require("ibl").setup {
            indent = {
                char = "│",
            },
            exclude = {
                filetypes = { "help", "dashboard", "packer", "NvimTree" },
            },
        }
    end,
}

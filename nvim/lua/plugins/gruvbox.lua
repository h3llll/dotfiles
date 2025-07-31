return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_enable_bold = 0
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_background = "medium"
    vim.g.gruvbox_material_foreground = "material"
    vim.g.gruvbox_material_ui_contrast = "high"

    vim.cmd.colorscheme("gruvbox-material")

    vim.api.nvim_set_hl(0, "@cBlock", { fg = "#d79921" })
   end,
}

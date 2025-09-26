return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    style = "night",
    transparent = true,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = false },
      functions = { bold = true },
      variables = { bold = false },
      sidebars = "dark",
      floats = "transparent",
    },
    dim_inactive = true,
    lualine_bold = true,
  },
}

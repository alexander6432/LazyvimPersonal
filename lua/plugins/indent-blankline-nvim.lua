return {
  "lukas-reineke/indent-blankline.nvim",
  event = "LazyFile",

  config = function()
    local highlight = {
      "RainbowRed",
      "RainbowOrange",
      "RainbowYellow",
      "RainbowGreen",
      "RainbowBlue",
      "RainbowCyan",
      "RainbowViolet",
    }

    local hooks = require("ibl.hooks")
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#d20f39" })
      vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#fe640b" })
      vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#dfde0d" })
      vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#40a02b" })
      vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#1e66f5" })
      vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#ea76cb" })
      vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#8839ef" })
    end)

    require("ibl").setup({ indent = { highlight = highlight } })
  end,

  opts = function()
    Snacks.toggle({
      name = "Indention Guides",
      get = function()
        return require("ibl.config").get_config(0).enabled
      end,
      set = function(state)
        require("ibl").setup_buffer(0, { enabled = state })
      end,
    }):map("<leader>ug")

    return {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = { show_start = false, show_end = false },
      exclude = {
        filetypes = {
          "Trouble",
          "alpha",
          "dashboard",
          "help",
          "lazy",
          "mason",
          "neo-tree",
          "notify",
          "snacks_dashboard",
          "snacks_notif",
          "snacks_terminal",
          "snacks_win",
          "toggleterm",
          "trouble",
        },
      },
    }
  end,
  main = "ibl",
}

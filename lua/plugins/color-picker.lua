return {
  "ziontee113/color-picker.nvim",
  config = true,
  keys = {
    { "<C-c>", "<cmd>PickColor<cr>", mode = "n", desc = "ColorPicker" },
    { "<C-c>", "<cmd>PickColorInsert<cr>", mode = "i", desc = "ColorPicker" },
  },
  opts = {
    icons = { "󰝤", "" },
    border = "rounded", -- none | single | double | rounded | solid | shadow
    keymap = {
      ["h"] = "<Plug>ColorPickerSlider1Decrease",
      ["l"] = "<Plug>ColorPickerSlider1Increase",
      ["H"] = "<Plug>ColorPickerSlider5Decrease",
      ["L"] = "<Plug>ColorPickerSlider5Increase",
      ["J"] = "<Plug>ColorPickerSlider10Decrease",
      ["K"] = "<Plug>ColorPickerSlider10Increase",

      ["'"] = "<Plug>ColorPickerSlider0Percent",
      ["1"] = "<Plug>ColorPickerSlider10Percent",
      ["2"] = "<Plug>ColorPickerSlider20Percent",
      ["3"] = "<Plug>ColorPickerSlider30Percent",
      ["4"] = "<Plug>ColorPickerSlider40Percent",
      ["5"] = "<Plug>ColorPickerSlider50Percent",
      ["6"] = "<Plug>ColorPickerSlider60Percent",
      ["7"] = "<Plug>ColorPickerSlider70Percent",
      ["8"] = "<Plug>ColorPickerSlider80Percent",
      ["9"] = "<Plug>ColorPickerSlider90Percent",
      ["0"] = "<Plug>ColorPickerSlider100Percent",

      ["u"] = "<Plug>ColorPickerSetActionGroup1and2",
      ["i"] = "<Plug>ColorPickerSetActionGroup1and3",
      ["o"] = "<Plug>ColorPickerSetActionGroup2and3",
      ["p"] = "<Plug>ColorPickerSetActionGroup123",
      ["c"] = "<Plug>ColorPickerClearActionGroup",

      [","] = "<Plug>ColorPickerChangeOutputType",
      ["."] = "<Plug>ColorPickerChangeColorMode",
      ["n"] = "<Plug>ColorPickerNumericInput",
      ["-"] = "<Plug>ColorPickerToggleTransparency",

      ["<cr>"] = "<Plug>ColorPickerApplyColor",
    },
    background_highlight_group = "Normal",
    border_highlight_group = "FloatBorder",
    text_highlight_group = "Normal",
  },
}

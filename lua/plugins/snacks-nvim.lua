return {
  "snacks.nvim",
  opts = {
    indent = { enabled = true },
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
░░╗  ░░╗ ░░╗   ░░╗ ░░░░░░╗  ░░░░░░╗  ░░╗       ░░░░░╗  ░░░╗  ░░╗ ░░░░░░╗  󰣇
▒▒║  ▒▒║ ╚▒▒╗ ▒▒╔╝ ▒▒╔══▒▒╗ ▒▒╔══▒▒╗ ▒▒║      ▒▒╔══▒▒╗ ▒▒▒▒╗ ▒▒║ ▒▒╔══▒▒╗ 
▒▒▒▒▒▒▒║  ╚▒▒▒▒╔╝  ▒▒▒▒▒▒╔╝ ▒▒▒▒▒▒╔╝ ▒▒║      ▒▒▒▒▒▒▒║ ▒▒╠▒▒╗▒▒║ ▒▒║  ▒▒║ 
██╔══██║   ╚██╔╝   ██╔═══╝  ██╔══██╗ ██║      ██╔══██║ ██║╚████║ ██║  ██║ 
██║  ██║    ██║    ██║      ██║  ██║ ███████╗ ██║  ██║ ██║ ╚███║ ██████╔╝ 
╚═╝  ╚═╝    ╚═╝    ╚═╝      ╚═╝  ╚═╝ ╚══════╝ ╚═╝  ╚═╝ ╚═╝  ╚══╝ ╚═════╝  
 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Buscar Archivos", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "Nuevo Archivo", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Buscar por Texto", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Archivos Recientes", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Configuración", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restaurar Sesión", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Salir", action = ":qa" },
        },
      },
    },
  },
}

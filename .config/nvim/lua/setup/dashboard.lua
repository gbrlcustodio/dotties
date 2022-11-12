local db = require("dashboard")

db.custom_header = {
  "",
  "",
  "",
  "",
  "",
  "                                                                     ",
  "       ███████████           █████      ██                     ",
  "      ███████████             █████                             ",
  "      ████████████████ ███████████ ███   ███████     ",
  "     ████████████████ ████████████ █████ ██████████████   ",
  "    █████████████████████████████ █████ █████ ████ █████   ",
  "  ██████████████████████████████████ █████ █████ ████ █████  ",
  " ██████  ███ █████████████████ ████ █████ █████ ████ ██████ ",
  " ██████   ██  ███████████████   ██ █████████████████ ",
  " ██████   ██  ███████████████   ██ █████████████████ ",
  "",
  "",
  "",
  "",
  ""
}

db.custom_center = {
  {icon = "  ", desc = "Find File                 ", action = "Telescope find_files"},
  {icon = "  ", desc = "Recently Used Files       ", action = "Telescope oldfiles"},
  {icon = "  ", desc = "Find Word                 ", action = "Telescope live_grep"},
  {icon = "洛 ", desc = "New File                  ", action = "DashboardNewFile"},
  {icon = "  ", desc = "Bookmarks                 ", action = "Telescope marks"},
  {icon = "  ", desc = "Open Neovim Configuration ", action = ":e ~/.config/nvim/init.lua"}
}

db.default_executive = "telescope"

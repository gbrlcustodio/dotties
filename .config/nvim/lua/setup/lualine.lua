local navic = require("nvim-navic")

require "lualine".setup {
  options = {
    --theme = "onenord",
    theme = "tokyonight",
    section_separators = {"", ""},
    component_separators = ""
  },
  sections = {
    lualine_c = {
      {navic.get_location, cond = navic.is_available}
    }
  },
  extensions = {"nvim-tree"}
}

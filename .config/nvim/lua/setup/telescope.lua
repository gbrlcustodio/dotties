require("telescope").setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "sorbet"
    }
  },
  pickers = {
    find_files = {theme = "ivy"},
    oldfile = {theme = "ivy"},
    live_grep = {theme = "ivy"}
  }
}

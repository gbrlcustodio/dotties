local config = {
  actions = {
    open_file = {
      quit_on_open = true,
      resize_window = true
    }
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = ""
    }
  },
  filters = {
    dotfiles = false,
    custom = {".git", "node_modules", ".cache"}
  },
  disable_netrw = true,
  hijack_netrw = true,
  ignore_ft_on_setup = {"dashboard"},
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = false
  },
  view = {
    side = "left",
    width = 30,
    hide_root_folder = false,
    number = false,
    signcolumn = "yes"
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 400
  },
  renderer = {
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        git = {
          deleted = "",
          ignored = "◌",
          renamed = "➜",
          staged = "✓",
          unmerged = "",
          unstaged = "✗",
          untracked = "★"
        },
        folder = {
          default = "",
          empty = "", -- 
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = ""
        }
      },
      show = {
        folder = true,
        file = true,
        git = true
      }
    },
    root_folder_modifier = table.concat {":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??"},
    highlight_opened_files = "icon",
    highlight_git = true,
    add_trailing = false,
    indent_markers = {
      enable = true
    }
  }
}

require("nvim-tree").setup(config)

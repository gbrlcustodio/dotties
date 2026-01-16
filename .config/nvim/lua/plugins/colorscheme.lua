-- return {
--   "Shatur/neovim-ayu",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   opts = {
--     mirage = true,
--   },
--   config = function(_, opts)
--     -- load the colorscheme here
--     require("ayu").setup(opts)
--
--     vim.cmd [[colorscheme ayu-mirage]]
--   end,
-- }
--
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme "catppuccin-macchiato"
  end,
}

local noremap = function(lhs, rhs)
  vim.keymap.set("n", lhs, rhs, { noremap = true, silent = true })
end

noremap("<leader>q", ":q<CR>")
noremap("<leader>w", ":w<CR>")
noremap("<leader>x", ":x<CR>")

-- buffer navigation
noremap("<C-h>", require("smart-splits").move_cursor_left)
noremap("<C-j>", require("smart-splits").move_cursor_down)
noremap("<C-k>", require("smart-splits").move_cursor_up)
noremap("<C-l>", require("smart-splits").move_cursor_right)
noremap("<Tab>", require("smart-splits").move_cursor_previous)
noremap("t", ":b#<CR>")
noremap("<leader>c", ":bdelete<CR>")

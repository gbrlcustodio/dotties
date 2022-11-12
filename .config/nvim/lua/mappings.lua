-- Helper functions
local keymap = function(mode, alias, cmd, opts)
  vim.api.nvim_set_keymap(mode, alias, cmd, opts)
end

local nmap = function(alias, cmd)
  keymap("n", alias, cmd, {silent = true})
end
local imap = function(alias, cmd)
  keymap("i", alias, cmd, {silent = true})
end
local vmap = function(alias, cmd)
  keymap("i", alias, cmd, {silent = true})
end
local nnoremap = function(alias, cmd)
  keymap("n", alias, cmd, {noremap = true, silent = true})
end
local inoremap = function(alias, cmd)
  keymap("i", alias, cmd, {noremap = true, silent = true})
end
local vnoremap = function(alias, cmd)
  keymap("v", alias, cmd, {noremap = true, silent = true})
end

-- Saving and exiting
nnoremap("<Leader>w", ":w<CR>")
nnoremap("<Leader>q", ":q<CR>")
nnoremap("<Leader>x", ":x<CR>")

-- File explorer
nnoremap("<Leader>e", ":NvimTreeToggle<CR>")
nnoremap(";;", ":NvimTreeFocus<CR>")

-- Highlighting
nnoremap("<Leader>h", ":set hlsearch!<CR>")

-- Buffer navigation
nnoremap("<Tab>", ":bnext<CR>")
nnoremap("<S-Tab>", ":bprev<CR>")
nnoremap("<Leader>c", ":Bdelete<CR>")
nnoremap("t", ":b#<CR>")

-- Window navigation
nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")

-- Copy and pasting
nnoremap("cp", ':let @+= expand("%")<CR>')

-- Indenting
vnoremap("<S-Tab>", "<gv")
vnoremap("<Tab>", ">gv")
inoremap("<S-Tab>", "<C-D>")

-- Searching
nnoremap("<Leader>ff", ":Telescope find_files<CR>")
nnoremap("<Leader>fg", ":Telescope live_grep<CR>")
nnoremap("<Leader>fb", ":Telescope buffers<CR>")
nnoremap("<Leader>fn", ":Telescope help_tags<CR>")
nnoremap("<Leader>fh", ":Telescope jumplist<CR>")
nnoremap("<Leader>fr", ":Telescope resume<CR>")
nnoremap("<Leader>j", ":Telescope grep_string<CR>")

-- Jump to definition
nnoremap("gd", "<C-]>")

-- Gitlens
nnoremap("<Leader>b", ":Gitsigns blame_line<CR>")

-- Bottom pane
nnoremap("<Leader>t", ":TroubleToggle<CR>")

-- Formatting
nnoremap("F", "Format<CR>")

-- Previewing
nnoremap("<Leader>p", ":Glow<CR>")

-- Terminal emulator
nnoremap("<C-\\>", "<cmd>ToggleTerm<CR>")

-- Symbols outline
nnoremap("<leader>s", "<cmd>SymbolsOutline<CR>")

-- Split nicely
nnoremap("<leader>l", ":FocusSplitNicely<CR>")

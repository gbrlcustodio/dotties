vim.cmd [[
  filetype off
  filetype plugin indent on
]]

vim.g.mapleader = ","
vim.o.clipboard = "unnamedplus" -- Allows copy and pasting between vim and other programs
vim.o.shell = "/bin/zsh"
vim.o.cursorline = true
vim.o.scrolloff = 3 -- Always show at least one line above/below the cursor.
vim.o.sidescrolloff = 5 -- Always show at least one line left/right of the cursor.
vim.o.matchpairs = "<:>" -- Highlight matching pairs of brackets. Use the '%' character to jump between them.
vim.o.path = "**" -- Searches current directory recursively.
vim.o.wildmenu = true -- Display all matches when tab complete.
vim.o.incsearch = true -- Incremental search
vim.o.hidden = true -- Needed to keep multiple buffers open
vim.o.number = true -- Display line numbers
vim.o.showtabline = 2 -- always show tabline
vim.o.foldmethod = "indent" -- allow folding
vim.o.foldlevelstart = 20 -- files are always loaded with opened folds
vim.o.updatetime = 300 -- Having longer updatetime leads to poor UX
vim.o.autoread = true -- Reload file when detected to have been changed outside vim
vim.o.mouse = "nicr" -- Better mouse interaction
vim.cmd "syntax enable"
vim.g.rehash256 = 1

-- Display different types of white spaces.
vim.o.list = true
vim.o.listchars = "tab:→\\ ,nbsp:␣,trail:•,eol:↴"
vim.o.showbreak = "↪\\"

-- Identation
vim.o.smarttab = true -- Makes tabbing smarter, will realize you have 2 vs 4
vim.o.expandtab = true -- Use space instead of tabs
vim.o.shiftwidth = 2 -- One tab == two spaces.
vim.o.tabstop = 2 -- One tab == two spaces.
vim.o.autoindent = true
vim.o.laststatus = 2 -- Always shows statusline

-- Visual
vim.o.termguicolors = true
vim.cmd "set guioptions-=m" -- remove menu bar'
vim.cmd "set guioptions-=T" -- remove tooltbar
vim.cmd "set guioptions-=r" -- remove right-hand scroll bar
vim.cmd "set guioptions-=L" -- remove left-hand scroll bar

vim.o.completeopt = "menu,menuone,noselect"

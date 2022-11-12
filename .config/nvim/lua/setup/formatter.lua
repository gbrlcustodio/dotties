local prettier = function()
  return {
    exe = "prettier",
    args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
    stdin = true
  }
end

local luafmt = function()
  return {
    exe = "luafmt",
    args = {"--indent-count", 2, "--stdin"},
    stdin = true
  }
end

local mixfmt = function()
  return {
    exe = "mix",
    args = {"format"},
    stdin = true
  }
end

local rustfmt = function()
  return {
    exe = "rustfmt",
    args = {"--emit=stdout", "--edition=2021"},
    stdin = true
  }
end

local tflint = function()
  return {
    exe = "terraform",
    args = {"fmt", "-"},
    stdin = true
  }
end

require("formatter").setup(
  {
    filetype = {
      css = {prettier},
      json = {prettier},
      markdown = {prettier},
      javascript = {prettier},
      typescript = {prettier},
      lua = {luafmt},
      elixirls = {mixfmt},
      rust = {rustfmt},
      terraform = {tflint}
    }
  }
)

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.rs,*.lua,*.tf,*.tfvars FormatWrite
augroup END
]],
  true
)

local util = require("formatter.util")

local prettier = function()
	return {
		exe = "prettier",
		args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
		stdin = true,
	}
end

local stylua = function()
	-- Supports conditional formatting
	if util.get_current_buffer_file_name() == "special.lua" then
		return nil
	end

	return {
		exe = "stylua",
		args = {
			"--search-parent-directories",
			"--stdin-filepath",
			util.escape_path(util.get_current_buffer_file_path()),
			"--",
			"-",
		},
		stdin = true,
	}
end

local mixfmt = function()
	return {
		exe = "mix",
		args = { "format" },
		stdin = true,
	}
end

local rustfmt = function()
	return {
		exe = "rustfmt",
		args = { "--emit=stdout", "--edition=2021" },
		stdin = true,
	}
end

local tflint = function()
	return {
		exe = "terraform",
		args = { "fmt", "-" },
		stdin = true,
	}
end

local stree = function()
	return {
		exe = "stree",
		args = { "write" },
		stdin = true,
	}
end

require("formatter").setup({
	filetype = {
		css = { prettier },
		json = { prettier },
		markdown = { prettier },
		javascript = { prettier },
		typescript = { prettier },
		lua = { require("formatter.filetypes.lua").stylua, stylua },
		elixirls = { mixfmt },
		rust = { rustfmt },
		terraform = { tflint },
		ruby = { stree },
	},
})

vim.api.nvim_exec(
	[[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.rs,*.lua,*.tf,*.tfvars FormatWrite
augroup END
]],
	true
)

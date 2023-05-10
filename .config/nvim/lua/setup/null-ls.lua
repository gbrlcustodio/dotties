local null_ls = require("null-ls")

local diagnostics = null_ls.builtins.diagnostics
local conditional = function(fn)
	local utils = require("null-ls.utils").make_conditional_utils()
	return fn(utils)
end

null_ls.setup({
	sources = {
		conditional(function(utils)
			return utils.root_has_file("Gemfile")
					and diagnostics.rubocop.with({
						command = "bundle",
						args = vim.list_extend({ "exec", "rubocop" }, diagnostics.rubocop._opts.args),
					})
				or diagnostics.rubocop
		end),
	},
})

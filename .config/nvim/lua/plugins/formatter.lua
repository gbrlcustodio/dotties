return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = "fallback",
    },
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_fix", "ruff_format" },
      elixir = { "mix" },
      javascript = { "biome" },
      go = { "gofmt" },
    },
  },
}

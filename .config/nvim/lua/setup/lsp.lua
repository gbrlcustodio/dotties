-- Setup lspconfig.
require "lspconfig".sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT"
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {"vim"}
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true)
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false
      }
    }
  }
}

require "lspconfig".solargraph.setup {
  cmd = {"solargraph", "stdio"},
  filetypes = {"ruby"},
  init_options = {
    formatting = true
  },
  settings = {
    solargraph = {
      diagnostics = true
    }
  }
}

local path_to_elixirls = vim.fn.expand("~/lsp/elixir-ls/language_server.sh")
require "lspconfig".elixirls.setup {
  cmd = {path_to_elixirls}
}

require "lspconfig".tsserver.setup {}
require "lspconfig".eslint.setup {}

require "lspconfig".rust_analyzer.setup {}

require "lspconfig".terraformls.setup {}
require "lspconfig".tflint.setup {}

-- Extended hints
require("lspkind").init(
  {
    -- enables text annotations
    --
    -- default: true
    -- with_text = true,
    mode = "symbol_text",
    -- default symbol map
    -- can be either 'default' (requires nerd-fonts font) or
    -- 'codicons' for codicon preset (requires vscode-codicons font)
    --
    -- default: 'default'
    preset = "codicons",
    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    }
  }
)

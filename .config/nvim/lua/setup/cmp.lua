local cmp = require "cmp"
local lspkind = require("lspkind")

cmp.setup(
  {
    formatting = {
      format = lspkind.cmp_format({with_text = true, maxwidth = 50})
    },
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end
    },
    mapping = {
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<Tab>"] = function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end,
      ["<S-Tab>"] = function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end,
      ["<C-e>"] = cmp.mapping.close()
      -- ["<CR>"] = cmp.mapping.confirm {
      --   behavior = cmp.ConfirmBehavior.Replace,
      --   select = true
      -- }
    },
    sources = {
      {name = "nvim_lsp"},
      {name = "vsnip"},
      {name = "buffer"},
      {name = "look"}
    }
  }
)

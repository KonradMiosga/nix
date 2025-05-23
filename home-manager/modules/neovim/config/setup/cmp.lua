require("luasnip.loaders.from_vscode").lazy_load()
local lspkind = require('lspkind')
local luasnip = require("luasnip")
local cmp = require 'cmp'
cmp.setup({
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- ['<C-k>'] = cmp.mapping.scroll_docs(-4),
    -- ['<C-j>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-j>"] = cmp.mapping(function(fallback)
      if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<C-k>"] = cmp.mapping(function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'nvim_lua' },
    { name = 'buffer' },
    { name = 'path' },
  },

  window = {
    completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },

  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = "[buf]",
        nvim_lsp = "[LSP]",
        nvim_lua = "[API]",
        path = "[path]",
        luasnip = "[snip]",
      }
    }
  },

  snippet = {
    expand = function(args)
      require 'luasnip'.lsp_expand(args.body)
    end,
  },

  experimental = {
    native_menu = false,
    ghost_text = false
  },
})

local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
lspconfig.lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = { version = "Lua 5.1" },
      diagnostics = {
        globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
      }
    }
  }
}
lspconfig.angularls.setup({ capabilities = capabilities })
lspconfig.jdtls.setup({ capabilities = capabilities })
lspconfig.marksman.setup({ capabilities = capabilities })
lspconfig.ols.setup({ capabilities = capabilities })
lspconfig.nixd.setup({
  capabilities = capabilities,
  cmd = { "nixd" },
  settings = {
    nixd = {
      nixpkgs = {
        expr = "import <nixpkgs> { }",
        -- expr = '(import (builtins.getFlake "nixpkgs")).legacyPackages.${builtins.currentSystem}',
      },
      formatting = {
        command = { "nixfmt" },
      },
      options = {
        nixos = {
          expr = '(builtins.getFlake ("git+file://" + toString ./.)).nixosConfigurations.scrappy.options',
        },
        home_manager = {
          expr =
          '(builtins.getFlake ("git+file://" + toString ./.)).homeConfigurations.copperplate.options',
        },
      },
    },
  },
})

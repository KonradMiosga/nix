require("neorg").setup {
  load = {
    ["core.defaults"] = {}, -- Loads default behaviour
    ["core.summary"] = {},
    ["core.integrations.treesitter"] = {},
    ["core.concealer"] = {}, -- Adds pretty icons to your documents
    ["core.integrations.telescope"] = {},
    ["core.dirman"] = {      -- Manages Neorg workspaces
      config = {
        workspaces = {
          notes = "~/notes",
        },
        default_workspace = "notes",
      },
    },
  },
}

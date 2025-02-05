# {
#   pkgs,
#   inputs,
#   ...
# }: {
{
  programs.nvf = {
    enable = true;
    # your settings need to go into the settings attribute set
    # most settings are documented in the appendix
    settings = {
      vim = {
        options = {
          tabstop = 4;
          softtabstop = 4;
          shiftwidth = 4;
          smartindent = true;
          hlsearch = false;
        };
        keymaps = [
          {
            key = "<C-p>";
            mode = "n";
            silent = true;
            action = ":Telescope git_files<CR>";
          }
          {
            key = "<leader>pv";
            mode = "n";
            silent = true;
            action = ":Ex<CR>";
          }
        ];
        theme = {
          enable = true;
          name = "gruvbox";
          style = "dark";
        };
        binds = {
          whichKey.enable = true;
          cheatsheet.enable = true;
        };

        lsp.formatOnSave = true;
        statusline.lualine = {
          enable = true;
          theme = "gruvbox";
        };
        telescope.enable = true;
        autocomplete.nvim-cmp = {
          enable = true;
          # mappings.confirm = "<C-y>"
        };

        viAlias = false;
        vimAlias = true;
        snippets.luasnip.enable = true;
        languages = {
          enableFormat = true;
          enableLSP = true;
          enableTreesitter = true;
          nix = {
            enable = true;
          };
          java = {
            enable = true;
          };
          markdown = {
            enable = true;
            extensions.render-markdown-nvim.enable = true;
          };
        };
        # notes.obsidian = {
        #   enable = true;
        #   setupOpts = {
        #     workspaces = {
        #       name = "Notes";
        #       path = "~/Studium/notes";
        #     };
        #   };
        # };
      };
    };
  };
}

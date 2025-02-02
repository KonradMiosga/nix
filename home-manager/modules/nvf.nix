{
  pkgs,
  inputs,
  ...
}: {
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
        theme = {
          enable = true;
          name = "gruvbox";
          style = "dark";
        };
        lsp.formatOnSave = true;
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        viAlias = false;
        vimAlias = true;
        languages = {
          enableFormat = true;
          enableLSP = true;
          enableTreesitter = true;
          nix = {
            enable = true;
            format.enable = true;
          };
          java = {
            enable = true;
          };
        };
      };
    };
  };
}

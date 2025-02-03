{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    extraPackages = with pkgs; [
      lua-language-server
      python311Packages.python-lsp-server
      nixd
      vimPlugins.nvim-treesitter-parsers.hyprlang
      vimPlugins.telescope-nvim
      # theme
      vimPlugins.gruvbox
    ];
    extraConfig = ''
      set number
      syntax on
    '';
  };
}

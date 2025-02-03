{ config, pkgs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    plugins = with pkgs.vimPlugins; [
      nvim-lspconfig
      nvim-treesitter.withAllGrammars
      plenary-nvim
      gruvbox
      mini-nvim
      ];
    extraConfig = ''
      set number
      syntax on

      " Enable 24-bit colors (true color)
      if (has("termguicolors"))
        set termguicolors
      endif

      " Load the gruvbox theme
      colorscheme gruvbox

      " Optional: Set background to dark
      set background=dark
    '';
  };
}

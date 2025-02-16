{
  config,
  pkgs,
  ...
}:
{
  programs.neovim = {
    plugins = [
      #Theme
      {
        plugin = pkgs.vimPlugins.gruvbox-nvim;
      }
      #Telescope
      {
        plugin = pkgs.vimPlugins.telescope-nvim;
        config = builtins.readFile config/setup/telescope.lua;
        type = "lua";
      }
      pkgs.vimPlugins.telescope-fzf-native-nvim

      #Treesitter
      {
        plugin = pkgs.vimPlugins.nvim-treesitter;
        config = builtins.readFile config/setup/treesitter.lua;
        type = "lua";
      }
      pkgs.vimPlugins.nvim-treesitter.withAllGrammars
      pkgs.vimPlugins.nvim-treesitter-textobjects

      #LSP
      {
        plugin = pkgs.vimPlugins.nvim-lspconfig;
        config = builtins.readFile config/setup/lspconfig.lua;
        type = "lua";
      }
      pkgs.vimPlugins.plenary-nvim

      #CMP
      {
        plugin = pkgs.vimPlugins.nvim-cmp;
        config = builtins.readFile config/setup/cmp.lua;
        type = "lua";
      }
      pkgs.vimPlugins.cmp-nvim-lsp
      pkgs.vimPlugins.cmp-buffer
      pkgs.vimPlugins.cmp-cmdline
      pkgs.vimPlugins.cmp_luasnip
      pkgs.vimPlugins.lspkind-nvim
      pkgs.vimPlugins.luasnip
      pkgs.vimPlugins.friendly-snippets

      #Harpoon
      {
        plugin = pkgs.vimPlugins.harpoon2;
        config = builtins.readFile config/setup/harpoon.lua;
        type = "lua";
      }

      #GitSigns
      {
        plugin = pkgs.vimPlugins.gitsigns-nvim;
        config = "require('gitsigns').setup()";
        type = "lua";
      }

      #mini.nvim
      {
        plugin = pkgs.vimPlugins.mini-statusline;
        config = "require('mini.statusline').setup({ use_icons = true })";
        type = "lua";
      }
      {
        plugin = pkgs.vimPlugins.mini-surround;
        config = "require('mini.surround').setup()";
        type = "lua";
      }
      {
        plugin = pkgs.vimPlugins.mini-pairs;
        config = "require('mini.pairs').setup()";
        type = "lua";
      }

      #OIL
      {
        plugin = pkgs.vimPlugins.oil-nvim;
        config = "require('oil').setup()";
        type = "lua";
      }
    ];
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    extraLuaConfig = ''
        ${builtins.readFile config/remap.lua}
      ${builtins.readFile config/set.lua}
    '';
  };
}

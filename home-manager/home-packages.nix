{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    anki
    alacritty
    google-chrome
    networkmanagerapplet
    obsidian
    spotify
    telegram-desktop
    vesktop
    wirelesstools
    vscode

    # CLI utils
    brightnessctl
    cava
    deno
    fzf
    grim
    slurp
    satty
    pavucontrol
    pandoc
    playerctl
    ripgrep
    tree
    ueberzugpp
    unzip
    wget
    wl-clipboard
    zip

    # Coding stuff
    gcc
    nodejs_23
    openjdk17
    # LSPs
    jdt-language-server
    lua-language-server
    nixd
    marksman
    # Formatter
    nixfmt-rfc-style
    # stuff
    tree-sitter

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    # bemoji
    nix-prefetch-scripts
    texlive.combined.scheme-full
    python313Packages.pylatexenc
  ];
}

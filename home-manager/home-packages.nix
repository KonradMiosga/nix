{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    discord
    google-chrome
    networkmanagerapplet
    obsidian
    spotify
    telegram-desktop
    vesktop
    vscode
    wirelesstools

    # CLI utils
    brightnessctl
    cava
    fzf
    grim
    slurp
    satty
    grimblast
    pavucontrol
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
    openjdk
    # LSPs
    jdt-language-server
    lua-language-server
    nil
    nixd
    # Formatter
    nixfmt-rfc-style

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    bemoji
    nix-prefetch-scripts
  ];
}

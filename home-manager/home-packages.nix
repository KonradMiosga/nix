{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    anki
    discord
    google-chrome
    gnome-solanum
    networkmanagerapplet
    obsidian
    spotify
    telegram-desktop
    vesktop
    # vscode
    wirelesstools
    zoom-us

    # CLI utils
    brightnessctl
    cava
    deno
    fzf
    grim
    slurp
    satty
    # grimblast
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
    marksman
    # Formatter
    nixfmt-rfc-style

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    # bemoji
    nix-prefetch-scripts
    texlive.combined.scheme-full
  ];
}

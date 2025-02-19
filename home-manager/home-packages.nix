{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    anki
    alacritty
    firefox
    google-chrome
    networkmanagerapplet
    obsidian
    libsForQt5.okular
    spotify
    telegram-desktop
    vesktop
    wirelesstools

    # CLI utils
    brightnessctl
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
    glfw
    odin
    # LSPs
    jdt-language-server
    lua-language-server
    marksman
    nixd
    # Formatter
    nixfmt-rfc-style
    ols
    # stuff
    tree-sitter

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    # bemoji
    # nix-prefetch-scripts
    # texlive.combined.scheme-full
    # python313Packages.pylatexenc
  ];
}

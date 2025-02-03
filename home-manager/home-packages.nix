{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    telegram-desktop
    discord
    obsidian
    spotify
    networkmanagerapplet
    wirelesstools

    # CLI utils
    fzf
    brightnessctl
    pavucontrol
    playerctl
    ripgrep
    ueberzugpp
    unzip
    wget
    wl-clipboard
    zip

    # Coding stuff
    gcc

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

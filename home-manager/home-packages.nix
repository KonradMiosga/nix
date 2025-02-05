{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    discord
    networkmanagerapplet
    obsidian
    spotify
    telegram-desktop
    vesktop
    wirelesstools

    # CLI utils
    brightnessctl
    fzf
    grimblast
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

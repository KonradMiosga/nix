{
  imports = [
    # ./audio.nix
    ./apple_tweaks.nix
    ./bluetooth.nix
    ./env.nix
    # ./home-manager.nix
    ./hyprland.nix
    ./kernel.nix
  ];
  services.pipewire.wireplumber.extraConfig."10-bluez" = {
    "monitor.bluez.properties" = {
      "bluez5.enable-sbc-xq" = true;
      "bluez5.enable-msbc" = true;
      "bluez5.enable-hw-volume" = true;
      "bluez5.roles" = [
        "hsp_hs"
        "hsp_ag"
        "hfp_hf"
        "hfp_ag"
      ];
    };
  };
}

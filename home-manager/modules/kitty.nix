{
  config,
  pkgs,
  lib,
  ...
}:
{
  programs.kitty = lib.mkForce {
    enable = true;
    font.name = "JetBrainsMono Nerd Font";
    font.size = 10;
    settings = {
      confirm_os_window_close = 0;
      dynamic_background_opacity = true;
      enable_audio_bell = false;
      mouse_hide_wait = "-1.0";
      window_padding_width = 10;
      background_opacity = "0.9";
      background_blur = 5;
    };
  };
}

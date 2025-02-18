{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    settings = {
      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      monitor = ",preferred,auto,auto";
      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$fileManager" = "$terminal -e sh -c 'ranger'";
      "$menu" = "wofi";

      exec-once = [
        "waybar"
        "nm-applet --indicator"
        #"wl-paste --type text --watch cliphist store"
        #"wl-paste --type image --watch cliphist store"
      ];

      general = {
        gaps_in = 2;
        gaps_out = 4;

        border_size = 2;

        # "col.active_border" = "rgba(d65d0eff) rgba(98971aff) 45deg";
        # "col.inactive_border" = "rgba(3c3836ff)";

        "col.active_border" = "rgba(ebdbb2ff) rgba(ebdbb2ff) 45deg";
        "col.inactive_border" = "rgba(928374ff)";

        resize_on_border = true;

        allow_tearing = false;
        layout = "master";
      };

      decoration = {
        rounding = 2;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

        shadow = {
          enabled = false;
        };

        # blur = {
        #   enabled = false;
        # };

      blur = {
        enabled = false;
        size = 5;
        passes = 5;
        popups = true;
        special = true;
        new_optimizations = true;
        ignore_opacity = true;
      };

      };

      animations = {
        enabled = false;
        # enabled = true;
        first_launch_animation = true;

        bezier = [
            "drag, 0.2, 1, 0.2, 1"
            "pop, 0.1, 0.8, 0.2, 1"
            "liner, 1, 1, 1, 1"
            ];
       
        animation = [
            "fade, 1, 5, drag"

            "windowsIn, 1, 6, drag, slide"
            "windowsOut, 1, 10, pop, popin 75%"
            "windowsMove, 1, 6, drag, slide"
            "fadeIn, 1, 5, drag"
            "fadeOut, 1, 5, drag"
            "fadeSwitch, 1, 12, drag"

            "layersIn, 1, 7, drag, slide"
            "layersOut, 1, 20, drag"
            "fadeLayersIn, 1, 5, drag"
            "fadeLayersOut, 1, 10, drag"

            "border, 1, 1, liner"
            "borderangle, 1, 30, liner, loop"

            "workspacesIn, 1, 7, drag, slidefade 40%"
            "workspacesOut, 1, 7, drag, slidefade 40%"

            "specialWorkspaceIn, 1, 6, drag, slidefadevert 80%"
            "specialWorkspaceOut, 1, 6, drag, slidefadevert 65%"
            ];
      };

      input = {
        kb_layout = "de";
        kb_options = "ctrl:nocaps";
        touchpad.natural_scroll = true;
      };

      gestures = {
        workspace_swipe = true;
        workspace_swipe_invert = true;
        workspace_swipe_forever = true;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      windowrulev2 = [
        # "bordersize 0, floating:0, onworkspace:w[t1]"

        "float,class:(mpv)|(imv)|(showmethekey-gtk)"
        "move 990 60,size 900 170,pin,noinitialfocus,class:(showmethekey-gtk)"
        "noborder,nofocus,class:(showmethekey-gtk)"

        "workspace 3,class:(obsidian)"
        "workspace 3,class:(zathura)"
        # "workspace 4,class:(com.obsproject.Studio)"
        "workspace 5,class:(org.telegram.desktop)"
        "workspace 6,class:(vesktop)"
        "workspace 7,class:(spotify)"

        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"

        "opacity 0.0 override, class:^(xwaylandvideobridge)$"
        "noanim, class:^(xwaylandvideobridge)$"
        "noinitialfocus, class:^(xwaylandvideobridge)$"
        "maxsize 1 1, class:^(xwaylandvideobridge)$"
        "noblur, class:^(xwaylandvideobridge)$"
        "nofocus, class:^(xwaylandvideobridge)$"
      ];

      # workspace = [
      #   "w[tv1], gapsout:0, gapsin:0"
      #   "f[1], gapsout:0, gapsin:0"
      # ];
    };
  };
}

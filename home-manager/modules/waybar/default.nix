{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        modules-left = ["hyprland/workspaces"];
        # modules-center = ["hyprland/window"];
        modules-right = ["custom/weather" "pulseaudio" "battery" "network" "clock" "tray"];
        # "hyprland/workspaces" = {
        #   disable-scroll = true;
        #   show-special = true;
        #   special-visible-only = true;
        #   all-outputs = false;
        #   format = "{icon}";
        #   format-icons = {

        #     "1" = "";
        #     "2" = "";
        #     "3" = "";
        #     "4" = "";
        #     "5" = "";
        #     "6" = "";
        #     "7" = "";
        #     "8" = "";
        #     "9" = "";
        #     "magic" = "";
        #   };

        # persistent-workspaces = {
        #   "*" = 9;
        # };
        # };

        # "hyprland/language" = {
        #   format-en = "🇺🇸";
        #   format-ru = "🇷🇺";
        #   format-he = "🇮🇱";
        #   min-length = 5;
        #   tooltip = false;
        # };

        "custom/weather" = {
          format = " {} ";
          exec = "curl -s 'wttr.in/Görlitz?format=%c%t'";
          interval = 300;
          class = "weather";
        };

        "pulseaudio" = {
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} {volume}% ";
          format-muted = "";
          format-icons = {
            "headphones" = "";
            "handsfree" = "";
            "headset" = "";
            "phone" = "";
            "portable" = "";
            "car" = "";
            "default" = ["" ""];
          };
          on-click = "pavucontrol";
        };

        "battery" = {
          states = {
            warning = 30;
            critical = 1;
          };
          format = "{icon} {capacity}%";
          format-charging = " {capacity}%";
          format-alt = "{time} {icon}";
          format-icons = ["" "" "" "" ""];
        };

        "network" = {
          format-disconnected = " Disconnected";
          format-ethernet = "󱘖 Wired";
          format-linked = "󱘖 {ifname} (No IP)";
          format-wifi = "󰤨 {essid}";
          interval = 5;
          max-length = 30;
          tooltip-format = "󱘖 {ipaddr}  {bandwidthUpBytes}  {bandwidthDownBytes}";
        };

        "clock" = {
          format = "{:%d.%m.%Y - %H:%M}";
          format-alt = "{:%A, %B %d at %R}";
          tooltip-format = "<tt><small>{calendar}</small></tt>";
          calendar = {
            format = {
              days = "<span color='#ecc6d9'><b>{}</b></span>";
              months = "<span color='#ffead3'><b>{}</b></span>";
              today = "<span color='#ff6699'><b><u>{}</u></b></span>";
              weekdays = "<span color='#ffcc66'><b>{}</b></span>";
              weeks = "<span color='#99ffdd'><b>W{}</b></span>";
            };
            mode = "year";
            mode-mon-col = 3;
            on-click-right = "mode";
            on-scroll = 1;
            weeks-pos = "right";
          };
        };

        "tray" = {
          icon-size = 14;
          spacing = 1;
        };
      };
    };
  };
}

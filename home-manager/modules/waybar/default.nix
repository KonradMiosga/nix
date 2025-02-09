{
  programs.waybar = {
    enable = true;
    style = ./style2.css;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        mode = "dock";
        exclusive = true;
        passthrough = false;
        gtk-layer-shell = true;
        ipc = false;
        height = 0;
        modules-left = [
          # "custom/weather"
          "hyprland/workspaces"
          ];
        # modules-center = ["custom/playerctl" "pulseaudio"];
        # modules-center = ["cava" "custom/playerctl"];
        modules-right = ["tray" "battery" "pulseaudio" "network" "clock"];
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
            "default" = [" " " "];
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


    "custom/playerctl" = {
        format = "{2} <span>{0}</span>";
        return-type = "json";
        exec = "playerctl -p spotify metadata -f '{\"text\": \"{{markup_escape(title)}} - {{markup_escape(artist)}}  {{ duration(position) }}/{{ duration(mpris:length) }}\", \"tooltip\": \"{{markup_escape(title)}} - {{markup_escape(artist)}}  {{ duration(position) }}/{{ duration(mpris:length) }}\", \"alt\": \"{{status}}\", \"class\ = \"{{status}}\"}' -F";
        tooltip = false;
        on-click-middle = "playerctl -p spotify previous";
        on-click = "playerctl -p spotify play-pause";
        on-click-right = "playerctl -p spotify next";
        on-click-forward = "playerctl -p spotify position 10+";
        on-click-backward = "playerctl -p spotify position 10-";
        on-scroll-up = "playerctl -p spotify volume 0.02+";
        on-scroll-down = "playerctl -p spotify volume 0.02-";
        format-icons = {
            Paused = " ";
            Playing = " ";
        };
    };
    "cava" = {
        framerate = 40;
        autosens = 0;
        sensitivity = 10;
        bars = 18;
        lower_cutoff_freq = 50;
        higher_cutoff_freq = 10000;
        method = "pulse";
        hide_on_silence = false;
        sleep_timer = 5;
        source = "auto";
        stereo = false;
        reverse = false;
        bar_delimiter = 0;
        monstercat = false;
        waves = false;
        noise_reduction = 0.77;
        input_delay = 0;
        format-icons = ["▁" "▂" "▃" "▄" "▅" "▆" "▇" "█" ];
        actions = {
                   on-click-right = "mode";
        };
    };
      };
    };
  };
}

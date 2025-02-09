{
  programs.wofi = {
    enable = true;
    settings = {
      # allow_markup = true;
      # allow_images = true;
      # width = 350;
      # height = 450;
      width = 400;
      height = 520;
      location = "center";
      columns = 1;
      show = "drun";
      prompt = "Search...";
      filter_rate = 100;
      allow_markup = true;
      dmenu-parse_actions = true;
      no_actions = true;
      halign = "fill";
      valign = "start";
      content_halign = "fill";
      orientation = "vertical";
      insensitive = true;
      allow_images = true;
      image_size = 24;
      gtk_dark = true;
      layer = "top";
      term = "alacritty";
      hide_scroll = true;
      normal_window = true;
      line_wrap = "word_char";
      dynamic_lines = true;
      matching = "multi-contains";
      pre_display_exec = true;
      parse_search = true;
  
      key_down = "Ctrl-j";
      key_up = "Ctrl-k";
      key_left = "Ctrl-h";
      key_right = "Ctrl-l";
      key_expand = "Ctrl-o";
    };
  };

  home.file.".config/wofi/style.css".source = ./style2.css;
}

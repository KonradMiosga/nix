{
  environment.sessionVariables = rec {
    TERMINAL = "alacritty";
    EDITOR = "nvim";
    XDG_BIN_HOME = "$HOME/.local/bin";
    XDG_PICTURES_DIR = "$HOME/Pictures";
    PATH = [
      "${XDG_BIN_HOME}"
    ];
  };
}

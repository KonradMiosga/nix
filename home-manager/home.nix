{
  config,
  pkgs,
  system,
  inputs,
  ...
}:
{
  programs.home-manager.enable = true;

  home = {
    username = "copperplate";
    homeDirectory = "/home/copperplate";
    stateVersion = "24.11";
    sessionPath = [ "$HOME/.npm-global/bin" ];

    packages = with pkgs; [
      git
    ];
  };
  imports = [
    ./modules
    ./home-packages.nix
  ];
}

# { config, pkgs, ... }:
#
# {
#   home = {
#     username = "copperplate";
#     homeDirectory = "/home/copperplate";
#     stateVersion = "24.11";
#
#     packages = with pkgs; [
#       git
#       firefox
#     ];
#   };
# }
#

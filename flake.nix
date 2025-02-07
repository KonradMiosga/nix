{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nvf.url = "github:notashelf/nvf";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix/release-24.11";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    stylix,
    nvf,
    nixos-hardware,
    ...
  }: let
    system = "x86_64-linux";

    pkgs = nixpkgs.legacyPackages.${system};
  in {
    # NixOS Configuration Output
    nixosConfigurations.scrappy = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        # nixos-hardware.nixosModules.apple-macbook-air-7
        ./hosts/scrappy/configuration.nix
      ];
    };

    # Home Manager Configuration Output
    homeConfigurations.copperplate = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [
        stylix.homeManagerModules.stylix
        nvf.homeManagerModules.default
        ./home-manager/home.nix
      ];
    };
  };
}

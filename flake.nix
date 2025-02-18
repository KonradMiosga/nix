{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    stylix.url = "github:danth/stylix";
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      stylix,
      nixos-hardware,
      ...
    }@inputs:
    let
      system = "x86_64-linux";

      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      # NixOS Configuration Output
      nixosConfigurations.scrappy = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
        };
        modules = [
          nixos-hardware.nixosModules.apple-macbook-air-7
          ./hosts/scrappy/configuration.nix
        ];
      };

      # Home Manager Configuration Output
      homeConfigurations.copperplate = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = {
            inherit inputs;
            system = "x86_64-linux";
          };
        modules = [
          stylix.homeManagerModules.stylix
          ./home-manager/home.nix
        ];
      };
    };
}

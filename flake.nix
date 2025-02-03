{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nvf.url = "github:notashelf/nvf";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix/release-24.11";
  };

  outputs = { self, nixpkgs, home-manager, stylix, nvf, ... }: 
  let
    system = "x86_64-linux";

    pkgs = nixpkgs.legacyPackages.${system};

  in {
    # NixOS Configuration Output
    nixosConfigurations.scrappy = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
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

  # outputs = {
  #   self,
  #   nixpkgs,
  #   home-manager,
  #   ...
  # } @ inputs: let
  #   system = "x86_64-linux";
  #   homeStateVersion = "24.11";
  #   user = "copperplate";
  #   hosts = [
  #     {
  #       hostname = "scrappy";
  #       stateVersion = "24.11";
  #     }
  #   ];
  #
  #   makeSystem = {
  #     hostname,
  #     stateVersion,
  #   }:
  #     nixpkgs.lib.nixosSystem {
  #       system = system;
  #       specialArgs = {
  #         inherit inputs stateVersion hostname user;
  #       };
  #
  #       modules = [
  #         ./hosts/${hostname}/configuration.nix
  #       ];
  #     };
  # in {
  #   nixosConfigurations = nixpkgs.lib.foldl' (configs: host:
  #     configs
  #     // {
  #       "${host.hostname}" = makeSystem {
  #         inherit (host) hostname stateVersion;
  #       };
  #     }) {}
  #   hosts;
  #
  #   homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
  #     pkgs = nixpkgs.legacyPackages.${system};
  #     extraSpecialArgs = {
  #       inherit inputs homeStateVersion user;
  #     };
  #
  #     modules = [
  #       ./home-manager/home.nix
  #     ];
  #   };
  # };
  #}

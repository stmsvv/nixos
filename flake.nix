{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    import-tree.url = "github:vic/import-tree";

    noctalia = {
      url = "github:noctalia-dev/noctalia";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    kwin-effects-better-blur-dx = {
      url = "github:xarblu/kwin-effects-better-blur-dx/7902cf7e509f916e60d650eb7592e3232cdf9529";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim.url = "github:nix-community/nixvim";

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      import-tree,
      nixvim,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            {
              nixpkgs = {
                config.allowUnfree = true;
                overlays = [
                  (final: prev: {
                    stable = import inputs.nixpkgs-stable {
                      inherit (final) config;
                      inherit (final.stdenv.hostPlatform) system;
                    };
                  })
                ];
              };

            }
            ./hosts/pc/default.nix
            (import-tree ./hosts/common/modules)
            home-manager.nixosModules.default
            {
              home-manager = {
                extraSpecialArgs = { inherit inputs; };
                useGlobalPkgs = true;
                useUserPackages = true;
                users.arthur.imports = [
                  ./hosts/common/home.nix
                  nixvim.homeModules.nixvim
                ];
              };
            }
          ];
        };
        nixos-lt = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            {
              nixpkgs = {
                config.allowUnfree = true;
                overlays = [
                  (final: prev: {
                    stable = import inputs.nixpkgs-stable {
                      inherit (final) config;
                      inherit (final.stdenv.hostPlatform) system;
                    };
                  })
                ];
              };

            }

            (import-tree ./hosts/common/modules)
            ./hosts/laptop/default.nix
            home-manager.nixosModules.default
            {
              home-manager = {
                extraSpecialArgs = { inherit inputs; };
                useGlobalPkgs = true;
                useUserPackages = true;
                users.arthur.imports = [
                  ./hosts/common/home.nix
                  nixvim.homeModules.nixvim
                ];
              };
            }
          ];
        };
      };
    };
}

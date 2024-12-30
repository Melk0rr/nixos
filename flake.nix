{
  description = "Me1k0r's config flake";
  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    # Home-manager
    home-manager = {
        url = "github:nix-community/home-manager";
	inputs.nixpkgs.follows = "nixpkgs";
    };
    
    # Hyprland
    hyprland = {
      type = "git";
      url = "https://github.com/hyprwm/Hyprland";
      submodules = true;
    };
    hyprgrass = {
      url = "github:horriblename/hyprgrass";
      inputs.hyprland.follows = "hyprland";
    };
    hyprpicker.url = "github:hyprwm/hyprpicker";
    iio-hyprland.url = "github:JeanSchoeller/iio-hyprland";

    # Spicetify
    spicetify-nix = {
      url = "github:gerg-l/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Zen browser
    zen-browser.url = "github:MarceColl/zen-browser-flake";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
  let
    system = "x86_64-linux";
    username = "me1k0r";
    
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };

    inherit (self) outputs;
  in {
    # Nixos configuration
    # nixos-rebuild switch --flake .#hostname
    nixosConfigurations = {
      onyx = nixpkgs.lib.nixosSystem {
        specialArgs = {
          hostname = "onyx";
          inherit system inputs username outputs;
        };
        modules = [
          ./hosts/onyx
        ];
      };
    };
  };
}

{ self, pkgs, ... }:

# Base system config
{
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [
	"nix-command"
	"flakes"
      ];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older than 7d";
    };
  };
  
  # Packages installes system wide
  environment.systemPackages = with pkgs; [
    wget
    git
    vim
  ];
  
  # Installing fonts
  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-mono
    nerd-fonts.dejavu-sans-mono
    nerd-fonts.jetbrains-mono
    nerd-fonts.meslo-lg
  ];

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11";
}

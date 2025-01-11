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
    git
    usbutils
    vim
    wget
  ];
  
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11";
}

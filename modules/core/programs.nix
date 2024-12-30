{ pkgs, lib,  ... }:

# Base program config
{
  programs = {
    fish.enable = true;
    dconf.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
      # pinentryFlavor = "";
    };
    nix-ld = {
      enable = true;
      libraries = with pkgs; [
      ];
    };
  };
}

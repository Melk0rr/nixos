{ pkgs, ... }:

# Base generic hardware config
{
  hardware = {
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver
      ];
    };
  };
}

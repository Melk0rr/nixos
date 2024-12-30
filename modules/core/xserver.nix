{ pkgs, ... }:

# Base XServer config
{
  services = {
    xserver = {
      enable = true;
      # Keyboard lay
      xkb = {
        layout = "fr";
        variant = "azerty";
      };
    };
    libinput = {
      enable = true;
    };
  };
}

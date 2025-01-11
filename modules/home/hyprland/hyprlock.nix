{ pkgs, ... }:

# Hyprlock config
{
  home.packages = (with pkgs; [ hyprlock ]);
}

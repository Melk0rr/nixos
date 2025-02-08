{ pkgs, ... }:

# Catppuccin theme config
{
  home.packages = (
    with pkgs; [ catppuccin ]
  );

  gtk = {
    enable = true;
    catppuccin = {
      enable = true;
      flavor = "mocha";
      accent = "pink";
      size = "standard";
      tweaks = [ "normal" ];
    };
  };
}

{ pkgs, ... }:
{
  gtk = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 12;
    };
    theme = {
      name = "Catppuccin-Mocha-Standard-Lavender-dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "pink" ];
        size = "standard";
        variant = [ "mocha" ];
      };
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "mocha";
        accent = "lavender";
      };
    };
  };
}

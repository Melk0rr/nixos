{ pkgs, ... }:
{
  home.packages = with pkgs; [ papirus-folders ];

  catppuccin = {
    gtk = {
      enable = true;
      gnomeShellTheme = true;
      icon.enable = true;
    };

    cursors = {
      enable = true;
      accent = "dark";
    };
  };

  gtk = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 12;
    };
    gtk3.extraConfig.gtk-application-prefer-dark-theme = true;
    gtk4.extraConfig.gtk-application-prefer-dark-theme = true;
  };
}

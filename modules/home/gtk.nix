{ pkgs, ... }:
{
  home.packages = with pkgs; [ papirus-folders ];

  catppuccin = {
    gtk = {
      enable = true;
      gnomeShell = true;
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
    # theme = {
    #   name = "Catppuccin-Mocha";
    #   package = pkgs.magnetic-catppuccin-gtk.override {
    #     shade = "dark";
    #     size = "standard";
    #   };
    # };
    # iconTheme = {
    #   name = "Papirus-Dark";
    #   package = pkgs.catppuccin-papirus-folders.override {
    #     flavor = "mocha";
    #     accent = "mauve";
    #   };
    # };
    gtk3.extraConfig.gtk-application-prefer-dark-theme = true;
    gtk4.extraConfig.gtk-application-prefer-dark-theme = true;
  };

  # home.sessionVariables = {
  #   GTK_THEME = "Catppuccin-Mocha";
  # };
}

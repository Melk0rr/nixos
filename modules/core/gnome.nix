{ pkgs, ... }:

# GNOME configuration
{
  services.xserver = {
    # GDM display manager
    displayManager.gdm = {
      enable = true;
      wayland = true;
    };

    # GNOME desktop environment
    desktopManager.gnome = {
      enable = true;
    };
    excludePackages = with pkgs; [ xterm ];
  };
  environment.gnome.excludePackages = with pkgs; [ 
    geary
    gnome-calculator
    gnome-tour
    gnome-weather
  ];
}

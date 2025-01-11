{ inputs, pkgs, ... }:

{
  # Packages to use with hyprland
  home.packages = (with pkgs; [
    # Clipboard
    cliphist
    wl-clipboard

    # Hypr ecosystem (without dedicated module)
    hypridle
    hyprpicker
    hyprsunset

    # Wallpaper
    swww
  ]);

  # Hyprland config
  wayland.windowManager.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
    systemd.enable = true;
  };

  imports = [
    ./config
    ./hypridle.nix
    ./hyprlock.nix
  ];
}

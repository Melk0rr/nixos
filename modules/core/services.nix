{ ... }:

# Base services config
{
  services = {
    displayManager.defaultSession = "hyprland";
    dbus.enable = true;

    # SSD optimisation
    fstrim.enable = true;

    # Enable CUPS
    printing.enable = true;
  };
}

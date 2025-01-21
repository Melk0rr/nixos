{ ... }:

# Base services config
{
  services = {
    dbus.enable = true;

    # SSD optimisation
    fstrim.enable = true;

    # Enable CUPS
    printing.enable = true;
  };
}

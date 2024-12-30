{ self, pkgs, ... }:

# Multimedia packages
{
  environment.systemPackages = with pkgs; [
    cmus
    freetube
    imv
    krita
    lollypop
    mpv
  ];
}

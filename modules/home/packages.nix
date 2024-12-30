{ inputs, pkgs, ... }:

# Packages to install
{
  home.packages = (with pkgs; [
    localsend
    protonmail-desktop
    proton-pass
  ]);
}

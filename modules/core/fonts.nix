{ pkgs, ... }:

# Font configuration
{
  # Installing fonts
  fonts.packages = with pkgs; [
    cantarell
    nerd-fonts.caskaydia-mono
    nerd-fonts.dejavu-sans-mono
    nerd-fonts.jetbrains-mono
    nerd-fonts.meslo-lg
  ];
}

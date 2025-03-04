{ ... }:

# Default home module
{
  imports = [
    ./browser.nix
    ./fastfetch
    ./fish.nix
    ./ghostty
    ./git.nix
    ./gtk.nix
    ./hyprland
    ./nvim
    ./oh-my-posh
    ./packages.nix
    ./yazi
  ];
}

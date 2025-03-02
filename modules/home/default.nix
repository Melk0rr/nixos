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
    #./hyprland
    ./kitty.nix
    ./nvim
    ./oh-my-posh
    ./packages.nix
    ./yazi
  ];
}

{ inputs, username, hostname, ... }:

# Default home module
{
  imports = [
    ./browser.nix
    ./fastfetch
    ./fish.nix
    ./git.nix
    #./hyprland
    ./kitty.nix
    ./nvim
    ./oh-my-posh
    ./packages.nix
    ./yazi
  ];
}

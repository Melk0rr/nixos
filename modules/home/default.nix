{ inputs, username, hostname, ... }:

# Default home module
{
  imports = [
    ./browser.nix
    ./fastfetch
    ./fish.nix
    ./git.nix
    ./kitty.nix
    ./oh-my-posh
    ./packages.nix
  ];
}

{ inputs, username, hostname, ... }:

# Default home module
{
  imports = [
    ./browser.nix
    ./fastfetch.nix
    ./fish.nix
    ./git.nix
    ./kitty.nix
    ./oh-my-posh
    ./packages.nix
  ];
}

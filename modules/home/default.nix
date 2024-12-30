{ inputs, username, hostname, ... }:

# Default home module
{
  imports = [
    ./browser.nix
    ./fastfetch.nix
    ./git.nix
    ./kitty.nix
    ./packages.nix
  ];
}

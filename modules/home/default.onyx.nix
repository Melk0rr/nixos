{ inputs, username, hostname, ... }:
{
  imports = [
    ./default.nix
    ./gnome.nix
  ];
}

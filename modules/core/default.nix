{
  inputs,
  nixpkgs,
  self,
  username,
  host,
  ...
}:

{
  imports = [
    ./bootloader.nix
    ./hardware.nix
    ./locale.nix
    ./network.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./sound.nix
    ./system.nix
    ./users.nix
    ./wayland.nix
    ./xserver.nix
  ];
}

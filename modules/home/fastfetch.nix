{ pkgs, ... }:

# Fastfetch config
{
  home.packages = (with pkgs; [ fastfetch ]);
}

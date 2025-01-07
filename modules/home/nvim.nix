{ pkgs, ... }:

# Neovim configuration
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
    extraConfig = ''
      set number
    '';
  };
}

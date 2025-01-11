{ pkgs, ... }:

# Neovim configuration
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
    extraConfig = ''
      set number
      set expandtab
      set tabstop=2
    '';
  };
}

{ pkgs, ... }:
# Neovim configuration
{
  programs.neovim = {
    enable = true;
    flake = false;
    defaultEditor = true;
    vimAlias = true;
    extraLuaConfig = ''
      dofile(os.getenv 'HOME' .. '/nixos-config/modules/home/nvim/init.lua')
    '';
  };
}

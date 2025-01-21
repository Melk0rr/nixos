# Neovim configuration
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
    extraLuaConfig = ''
      dofile(os.getenv 'HOME' .. '/nixos-config/modules/home/nvim/init.lua')
    '';
    extraPackages = with pkgs; [
      # Language server packages (executables)
      ccls                                  # C/C++
      sumneko-lua-language-server           # Lua
      rust-analyzer                         # Rust
      pyright                               # Python
    ];
  };
}

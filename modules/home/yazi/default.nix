{ pkgs, ... }:

# Yazi configuration
{
  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
    initLua = ./init.lua;
    settings = {
      manager = {
        sort_by = "natural";
        sort_sensitive = true;
        sort_reverse = false;
        sort_dir_first = true;
        show_hidden = true;
        show_symlink = true;
      };

      preview = {
        cache_dir = ~/.cache/yazi;
      };
    };

    keymap = {
      manager.prepend_keymap = {
        { on = [ "l" ]; run = "plugin --sync smart-enter"; desc = "Enter the child directory, or open the file"; }
      };
    };

    plugins = {
      smart-enter = ./smart-enter
    };
  };
}

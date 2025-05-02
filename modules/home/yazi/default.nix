{ pkgs, username, ... }:

# Yazi configuration
{
  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
    initLua = ./main.lua;
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
        cache_dir = "/home/${username}/.cache/yazi";
      };

      plugin.prepend_fetcher = [
        { id = "git"; name = "*"; run = "git"; }
        { id = "git"; name = "/"; run = "git"; }
      ];
    };

    keymap = {
      manager.prepend_keymap = [
        { on = [ "l" ]; run = "plugin smart-enter"; desc = "Enter the child directory, or open the file"; }
      ];
    };

    plugins = {
      full-border = ./plugins/full-border.yazi;
      git = ./plugins/git.yazi;
      smart-enter = ./plugins/smart-enter.yazi;
    };
  };
}

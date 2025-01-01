{ pkgs, ... }:

# Kitty config
{
  programs.kitty = {
    enable = true;
    shellIntegration.enableFishIntegration = true;

    themeFile = "Catppuccin-Mocha";

    font = {
      name = "MesloLGL Nerd Font Mono";
      size = 12;
    };

    settings = {
      update_check_interval = 0;
      window_padding_width = 15;
    };

    keybindings = {
      # Scroll
      "ctrl+shift+up" = "scroll_line_up";
      "ctrl+shift+down" = "scroll_line_down";
      "ctrl+shift+k" = "scroll_line_up";
      "ctrl+shift+j" = "scroll_line_down";
      "ctrl+shift+page_up" = "scroll_page_up";
      "ctrl+shift+page_down" = "scroll_page_down";
      "ctrl+shift+home" = "scroll_home";
      "ctrl+shift+end" = "scroll_end";
      "ctrl+shift+h" = "scroll_scrollback";

      # Tab management
      "ctrl+shift+right" = "next_tab";
      "ctrl+shift+left" = "previous_tab";
      "ctrl+shift+t" = "new_tab";
      "ctrl+shift+q" = "close_tab";
      "ctrl+shift+l" = "next_layout";
      "ctrl+shift+." = "move_tab_forward";
      "ctrl+shift+," = "move_tab_backward";

      # Miscellaneous
      "ctrl+shift++" = "increase_font_size";
      "ctrl+shift+-" = "decrease_font_size";
      "ctrl+shift+backspace" = "restore_font_size";
    };
  };
}

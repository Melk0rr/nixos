{ ... }:

# Ghostty config 
{
  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;
    installVimSyntax = true;
    settings = {
      # Fonts
      font-family = "JetBrains Mono Nerd Font";
      font-size = 12;
      adjust-underline-position = 4;
      adjust-underline-thickness = "120%";
      theme = "catppuccin-mocha";

      # Padding
      window-padding-x = 20;
      window-padding-y = 10;

      # Cursor
      shell-integration-features = "cursor";

      # Tabs
      gtk-wide-tabs = false;
      gtk-tabs-location = "bottom";
      gtk-custom-css = [
        "tab-style.css"
      ];

      keybind = [
        "shift+ctrl+h=new_split:left"
        "shift+ctrl+l=new_split:right"
        "shift+ctrl+k=new_split:up"
        "shift+ctrl+j=new_split:down"

        "ctrl+a>h=goto_split:left"
        "ctrl+a>l=goto_split:right"
        "ctrl+a>k=goto_split:up"
        "ctrl+a>j=goto_split:down"
      ];
    };
  };
}


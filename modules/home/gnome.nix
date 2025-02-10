{ pkgs, ... }:

{
  home.packages = (
    with pkgs;
    [
      evince
      file-roller
      
      # GNOME extension for screen auto rotate
      gnomeExtensions.screen-rotate
    ]
  );
  
  dconf.settings = {
    "org/gnome/TextEditor" = {
      show-line-numbers = true;
      wrap-text = false;
    };
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
}

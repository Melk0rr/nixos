{
  wayland.windowManager.hyprland.settings.exec-once = [
    "$scrDir/resetxdgportal.sh" # reset XDPH for screenshare
    "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP" # for XDPH
    "dbus-update-activation-environment --systemd --all" # for XDPH
    "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP" # for XDPH
    "$scrDir/polkitkdeauth.sh" # authentication dialogue for GUI apps
    "waybar" # start bar
    "dunst" # start notification demon
    "wl-paste --type text --watch cliphist store" # clipboard store text data
    "wl-paste --type image --watch cliphist store" # clipboard store image data
    # "$scrDir/swwwallpaper.sh" # start wallpaper daemon
    "nm-applet" # network manager applet
    "blueman-applet" # systray app for BT
    "hypridle" # idle daemon

    # "kwalletd6"
  ];
}

{
  wayland.windowManager.hyprland.settings.env = [
    "PATH,$PATH:$scrDir"
    "GPG_TTY,tty"
    "XDG_CURRENT_DESKTOP,Hyprland"
    "XDG_SESSION_TYPE,wayland"
    "XDG_SESSION_DESKTOP,Hyprland"
    "XDG_CONFIG_HOME,$HOME/.config"
    "XDG_CACHE_HOME,$HOME/.cache"
    "XDG_DATA_HOME,$HOME/.local/share"
    "XDG_STATE_HOME,$HOME/.local/state"
    "XDG_DATA_DIRS,/usr/local/share:/usr/share"
    "MOZ_ENABLE_WAYLAND,1"
    "GDK_SCALE,1"
    "QT_QPA_PLATFORM,wayland"
    "QT_QPA_PLATFORMTHEME,qt6ct"
    "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
    "QT_AUTO_SCREEN_SCALE_FACTOR,1"
    "QT_STYLE_OVERRIDE,kvantum"
  ];
}

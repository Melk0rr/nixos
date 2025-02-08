# Window rules config
{
  wayland.windowManager.hyprland.settings.windowrulev2 = [
  ];

  wayland.windowManager.hyprland.settings.layerrule = [
    "blur,rofi"
    "ignorezero,rofi"
    "blur,notifications"
    "ignorezero,notifications"
    "blur,swaync-notification-window"
    "ignorezero,swaync-notification-window"
    "blur,swaync-control-center"
    "ignorezero,swaync-control-center"
    "blur,logout_dialog"
  ];
}

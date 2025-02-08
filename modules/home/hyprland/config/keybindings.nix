{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";
    
    # assign apps
    "$term" = "kitty";
    "$editor" = "nvim";
    #"$editor" = "codium --ozone-platform-hint=wayland --disable-gpu";
    "$file" = "yazi";
    "$filegui" = "dolphin";
    "$browser" = "zen-browser";
    "$ytclient" = "freetube --ozone-platform-hint=wayland";
    #"$music" = "kitty --session music.session";
    "$musicgui" = "lollypop";
    "$sysmon" = "missioncenter";

    # Classical bindings
    bind = [
      # Window/Session actions
      "$mainMod, Q, killactive"
      "ALT, F4, killactive"
      "$mainMod, delete, exit,"
      "$mainMod, W, togglefloating,"
      "ALT, return, fullscreen,"

      # Move active window to a workspace with mainMod + SHIFT + [0-9]
      "$mainMod SHIFT, ampersand, movetoworkspace, 1"
      "$mainMod SHIFT, eacute, movetoworkspace, 2"
      "$mainMod SHIFT, quotedbl, movetoworkspace, 3"
      "$mainMod SHIFT, apostrophe, movetoworkspace, 4"
      "$mainMod SHIFT, parenleft, movetoworkspace, 5"
      "$mainMod SHIFT, minus, movetoworkspace, 6"
      "$mainMod SHIFT, egrave, movetoworkspace, 7"
      "$mainMod SHIFT, underscore, movetoworkspace, 8"
      "$mainMod SHIFT, ccedilla, movetoworkspace, 9"
      "$mainMod SHIFT, agrave, movetoworkspace, 10"

      # Groups
      "$mainMod, G, togglegroup,"
      "$mainMod, F2, changegroupactive, f"
      "$mainMod, F1, changegroupactive, b"

      # Move active window to a relative workspace with mainMod + CTRL + ALT + [←→]
      "$mainMod CTRL ALT, right, movetoworkspace, r+1"
      "$mainMod CTRL ALT, left, movetoworkspace, r-1"
      
      # Move active window around current workspace with mainMod + SHIFT + CTRL [←→↑↓]
      "$mainMod SHIFT CTRL, left, movewindow, l"
      "$mainMod SHIFT CTRL, right, movewindow, r"
      "$mainMod SHIFT CTRL, up, movewindow, u"
      "$mainMod SHIFT CTRL, down, movewindow, d"

      # Scroll through existing workspaces with mainMod + scroll
      "$mainMod, mouse_down, workspace, e+1"
      "$mainMod, mouse_up, workspace, e-1"

      # Special workspaces (scratchpad)
      "$mainMod ALT, S, movetoworkspacesilent, special"
      "$mainMod, S, togglespecialworkspace,"

      # Toggle Layout
      "$mainMod, J, togglesplit,"

      # Move window silently to workspace Super + Alt + [0-9]
      "$mainMod ALT, ampersand, movetoworkspacesilent, 1"
      "$mainMod ALT, eacute, movetoworkspacesilent, 2"
      "$mainMod ALT, quotedbl, movetoworkspacesilent, 3"
      "$mainMod ALT, apostrophe, movetoworkspacesilent, 4"
      "$mainMod ALT, parenleft, movetoworkspacesilent, 5"
      "$mainMod ALT, minus, movetoworkspacesilent, 6"
      "$mainMod ALT, egrave, movetoworkspacesilent, 7"
      "$mainMod ALT, underscore, movetoworkspacesilent, 8"
      "$mainMod ALT, ccedilla, movetoworkspacesilent, 9"
      "$mainMod ALT, agrave, movetoworkspacesilent, 10"
    ];

    bindm = [
      # Move/Resize windows with mainMod + LMB/RMB and dragging
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];

    bindl = [
      # Trigger when the switch is turning off
      ", switch:on:Lid Switch, exec, swaylock && systemctl suspend"
    ];
    
    # Bindings with description, will repeat when held
    binde = [
      # Resize windows
      "$mainMod SHIFT, right, resizeactive, 30 0"
      "$mainMod SHIFT, left, resizeactive, -30 0"
      "$mainMod SHIFT, up, resizeactive, 0 -30"
      "$mainMod SHIFT, down, resizeactive, 0 30"
    ];

    # Bindings with description
    bindd = [
      # Window/Session actions
      "$mainMod, L, Lock screen, exec, hyprlock"
      "$mainMod SHIFT, F, Toggle pin on focused window, exec, windowpin"
      "$mainMod, backspace, Logout menu, exec, logoutlaunch 2"
      "CTRL, ESCAPE, Toggle waybar, exec, killall waybar || waybar"

      # Application shortcuts
      "$mainMod, RETURN, Open terminal, exec, $term"
      "$mainMod, E, Open GUI file manager, exec, $filegui"
      "$mainMod ALT, E, Open TUI file manager, exec, kitty -e $file"
      "$mainMod, C, Open code editor, exec, $editor"
      "$mainMod, F, Open FreeTube, exec, $ytclient"
      "$mainMod, B, Open browser, exec, $browser"
      "$mainMod SHIFT, M, Open TUI music player, exec, killall cmus && killall cava || $music"
      "$mainMod, M, Open GUI music player, exec, $musicgui"
      "CTRL, SHIFT, ESCAPE, Open system monitor, exec, $sysmon"

      # Rofi is toggled on/off if you repeat the key presses
      "$mainMod, A, Browse system files, exec, pkill -x rofi || rofilaunch f"
      "$mainMod, tab, Switch between desktop applications, exec, pkill -x rofi || rofilaunch w"
      "$mainMod, R, Launch desktop applications, exec, pkill -x rofi || rofilaunch d"

      # Screenshot/Screencapture
      "$mainMod, P, Drag to screenshot, exec, screenshot s"
      "$mainMod SHIFT, P, Triggers color picker, exec, hyprpicker -a"
      "$mainMod CTRL, P, frozen screen / drag screenshot, exec, screenshot sf"
      "$mainMod ALT, P, Print focused monitor, exec, screenshot m"
      ",print, Take a screenshot of all monitor, exec, screenshot p"
    ];

    # Bindings with description and working with an input inhibitor (e.g. lockscreen)
    binddl = [
      # Audio control
      ", F10, Toggle audio mute, exec, volumecontrol -o m"
      ", XF86AudioMute, Toggle audio mute, exec, volumecontrol -o m"
      ", XF86AudioMicMute, Toggle microphone mute, exec, volumecontrol -i m"
      ", XF86AudioPlay, Play media, exec, playerctl play-pause"
      ", XF86AudioPause, Pause media, exec, playerctl play-pause"
      ", XF86AudioNext, Next media track, exec, playerctl next"
      ", XF86AudioPrev, Previous media track, exec, playerctl previous"

      # Brightness control
      "$mainMod, F10, Display brightness, exec, brightnesscontrol g"
      "$mainMod, F11, Decrease brightness, exec, brightnesscontrol d"
      "$mainMod, F12, Increase brightness, exec, brightnesscontrol i"
    ];

    # Bindings with description, working with input inhibitor and will repeat when held
    binddel = [
      # Audio control
      ", F11, Decrease volume, exec, volumecontrol -o d"
      ", F12, Increase volume, exec, volumecontrol -o i"
      ", XF86AudioLowerVolume, Decrease volume, exec, volumecontrol -o d"
      ", XF86AudioRaiseVolume, Increase volume, exec, volumecontrol -o i"
    ];
  };
}

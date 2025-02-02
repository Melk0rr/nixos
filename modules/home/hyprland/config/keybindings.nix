{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";
    
    # assign apps
    "$term" = "kitty";
    #"$editor" = "codium --ozone-platform-hint=wayland --disable-gpu";
    "$file" = "yazi";
    "$filegui" = "dolphin";
    "$browser" = "zen-browser";
    "$ytclient" = "freetube --ozone-platform-hint=wayland";
    #"$music" = "kitty --session music.session";
    "$musicgui" = "lollypop";
    "$sysmon" = "missioncenter";

    # Classical bindings
    bind = {
      
    };

    # Bindings with description
    bindd = {
      # Window/Session actions
      "$mainMod, killactive, kill the window on focus, Q, killactive"
      "ALT, F4, killactive, kill the window on focus, killactive"
      "$mainMod, Kill hyperland session, delete, exit,"
      "$mainMod, W, Toggle the window on focus to float, togglefloating,"
      "ALT, return, Toggle fullscreen for the focused window, fullscreen,"
      "$mainMod, L, Lock screen, exec, hyprlock"
      "$mainMod SHIFT, F, Toggle pin on focused window, exec, windowpin"
      "$mainMod, backspace, Logout menu, exec, logoutlaunch 2"
      "$CONTROL, ESCAPE, Toggle waybar, exec, killall waybar || waybar"

      # Groups
      "$mainMod, G, Toggle the window on focus to group (tab mode), togglegroup,"
      "$mainMod, F2, Next window in group, changegroupactive, f"
      "$mainMod, F1, Previous window in group, changegroupactive, b"

      # Application shortcuts
      "$mainMod, RETURN, Open terminal, exec, $term"
      "$mainMod, E, Open GUI file manager, exec, $filegui"
      "$mainMod ALT, E, Open TUI file manager, exec, kitty -e $file"
      "$mainMod, C, Open code editor, exec, $editor"
      "$mainMod, F, Open FreeTube, exec, $ytclient"
      "$mainMod, B, Open browser, exec, $browser"
      "$mainMod SHIFT, M, Open TUI music player, exec, killall cmus && killall cava || $music"
      "$mainMod, M, Open GUI music player, exec, $musicgui"
      "$CONTROL SHIFT, ESCAPE, Open system monitor, exec, $sysmon"

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

      # Move active window to a workspace with mainMod + SHIFT + [0-9]
      "$mainMod SHIFT, ampersand, Move to workspace 1, movetoworkspace, 1"
      "$mainMod SHIFT, eacute, Move to workspace 2, movetoworkspace, 2"
      "$mainMod SHIFT, quotedbl, Move to workspace 3, movetoworkspace, 3"
      "$mainMod SHIFT, apostrophe, Move to workspace 4, movetoworkspace, 4"
      "$mainMod SHIFT, parenleft, Move to workspace 5, movetoworkspace, 5"
      "$mainMod SHIFT, minus, Move to workspace 6, movetoworkspace, 6"
      "$mainMod SHIFT, egrave, Move to workspace 7, movetoworkspace, 7"
      "$mainMod SHIFT, underscore, Move to workspace 8, movetoworkspace, 8"
      "$mainMod SHIFT, ccedilla, Move to workspace 9, movetoworkspace, 9"
      "$mainMod SHIFT, agrave, Move to workspace 10, movetoworkspace, 10"

      # Move active window to a relative workspace with mainMod + CTRL + ALT + [←→]
      "$mainMod CTRL ALT, right, Move to relative next workspace, movetoworkspace, r+1"
      "$mainMod CTRL ALT, left, Move to relative previous workspace, movetoworkspace, r-1"
    };

    # Bindings with description and working with an input inhibitor (e.g. lockscreen)
    binddl = {
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
    };

    # Bindings with description, will repeat when held
    bindde = {
      # Resize windows
      "$mainMod SHIFT, right, Increase window width, resizeactive, 30 0"
      "$mainMod SHIFT, left, Decrease window width, resizeactive, -30 0"
      "$mainMod SHIFT, up, Decrease window height, resizeactive, 0 -30"
      "$mainMod SHIFT, down, Increase window height, resizeactive, 0 30"
    }

    # Bindings with description, working with input inhibitor and will repeat when held
    binddel = {
      # Audio control
      ", F11, Decrease volume, exec, volumecontrol -o d"
      ", F12, Increase volume, exec, volumecontrol -o i"
      ", XF86AudioLowerVolume, Decrease volume, exec, volumecontrol -o d"
      ", XF86AudioRaiseVolume, Increase volume, exec, volumecontrol -o i"
    };
  };
}

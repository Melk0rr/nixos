{ pkgs, ... }:

# Hyprlock config
{
  programs.hyprlock = {
    enable = true;
    settings = {
      # GENERAL
      general = {
        no_fade_in = false;
        grace = 3;
        disable_loading_bar = false;
      };

      # BACKGROUND
      background = {
          path = "$HOME/.cache/hyde/wall.set";
          blur_passes = 2;
          contrast = 0.8916;
          brightness = 0.8172;
          vibrancy = 0.1696;
          vibrancy_darkness = 0.0;
      };

      # TIME
      label = {
          text = cmd[update:1000] echo "<span>$(date +'%H:%M')</span>";
          color = rgba(<wallbash_1xa8>cc);
          font_size = 130;
          font_family = JetBrains Mono Nerd Font Mono ExtraBold;
          position = "0, 320";
          halign = center;
          valign = center;
      };

      # Day-Month-Date
      label = {
          text = cmd[update:1000] echo -e "$(date +'%A, %d %B')";
          color = rgba(<wallbash_1xa8>cc);
          font_size = 30;
          font_family = SF Pro Display Bold;
          position = "0, 220";
          halign = center;
          valign = center;
      };

    # Profie-Photo
      image = {
          path = "$HOME/.config/hypr/face.png";
          border_color = rgba(<wallbash_1xa8>dd);
          border_size = 0;
          size = 180;
          rounding = -1;
          rotate = 0;
          reload_time = -1;
          reload_cmd = ;
          position = "0, 0";
          halign = center;
          valign = center;
      };

      # USER
      label = {
          monitor =
          text = Hi, $USER;
          color = rgba(<wallbash_1xa8>cc);
          font_size = 25;
          font_family = JetBrains Mono Nerd Font Mono;
          position = "0, -130";
          halign = center;
          valign = center;
      };

      # INPUT FIELD
      input-field = {
          size = "300, 60";
          outline_thickness = 2;
          dots_size = 0.2;
          dots_spacing = 0.2;
          dots_center = true;
          outer_color = rgba(<wallbash_1xa8>ff);
          inner_color = rgba(<wallbash_pry1>cc);
          font_color = rgba(<wallbash_1xa8>ff);
          fade_on_empty = false;
          font_family = JetBrains Mono Nerd Font Mono;
          placeholder_text = <i><span foreground="##<wallbash_1xa8>aa">Enter Password...</span></i>;
          hide_input = false;
          position = "0, -230";
          halign = center;
          valign = center;
      };

# CURRENT SONG
      label = {
          text = cmd[update:1000] echo "$(~/.config/hypr/scripts/songdetail.sh)" ;
          color = rgba(<wallbash_1xa8>dd);
          font_size = 18;
          font_family = JetBrains Mono Nerd, SF Pro Display Bold;
          position = "0, 60";
          halign = center;
          valign = bottom;
      };
    };
  };
}

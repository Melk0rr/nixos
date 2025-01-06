{ pkgs, ... }:

# Fastfetch config
{
  home.packages = (with pkgs; [ fastfetch ]);
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = ./nixos.png;
        padding = {
          top = 3;
          left = 1;
          right = 5;
        };
      };
      display = {
	color = "magenta";
        separator = "   ";
      };
      modules = [
        {
          format = "   {user-name-colored}@{host-name-colored}";
          type = "title";
        }
        {
          type = "custom";
          format = "┌─────────────── {#1}Hardware Information{#0} ───────────────┐";
        }
        {
          type = "host";
          key = "  󰌢";
        }
        {
          type = "cpu";
          key = "  ";
        }
        {
          type = "gpu";
          key = "  ﬙";
        }
        {
          type = "disk";
          key = "  ";
	  format = "{1} / {2}";
        }
        {
          type = "memory";
          key = "  󰑭";
	  format = "{1} / {2}";
        }
        {
         type = "display";
         key = "  󰍹";
        }
        {
          type = "brightness";
          key = "  󰃞";
        }
        {
          type = "battery";
          key = "  ";
        }
        {
          type = "poweradapter";
          key = "  ";
        }
        {
          type = "bluetooth";
          key = "  ";
        }
        {
          type = "custom";
          format = "├─────────────── {#1}Software Information{#0} ───────────────┤";
        }
        {
          type = "os";
          key = "  ";
        }
        {
          type = "kernel";
          key = "  ";
          format = "{1} {2}";
        }
        {
          type = "command";
          key = "  󱦟";
          text = "birth_install=$(stat -c %W /); current=$(date +%s); time_progression=$((current - birth_install)); days_difference=$((time_progression / 86400)); echo $days_difference days";
        }
        {
          type = "uptime";
          key = "  󰅐";
        }
        {
          type = "lm";
          key = "  󰧨";
        }
        {
          type = "de";
          key = "  ";
        }
        {
          type = "wm";
          key = "  ";
        }
        {
          type = "shell";
          key = "  ";
        }
        {
          type = "terminal";
          key = "  ";
        }
        {
          type = "packages";
          key = "  󰏖";
        }
        {
          type = "localip";
          key = "  󰩟";
          compact = true;
        }
        {
          type = "publicip";
          key = "  󰩠";
        }
        {
          type = "wifi";
          key = "  ";
          format = "{4}";
        }
        {
          type = "custom";
          format = "└────────────────────────────────────────────────────┘";
        }
        {
          type = "custom";
          format = " {#30}⬤ {#90}⬤ {#31}⬤ {#91}⬤ {#32}⬤ {#92}⬤ {#33}⬤ {#93}⬤ {#34}⬤ {#94}⬤ {#35}⬤ {#95}⬤ {#36}⬤ {#96}⬤ {#37}⬤ {#97}⬤ ";
        }
      ];
    };
  };
}

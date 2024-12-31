{ config, pkgs, hostname, ... }:

# Fish config
{
  programs.fish = {
    enable = true;
    
    # Abbr
    shellAbbrs = {
      # Nix
      nix-switch = "sudo nixos-rebuild switch --flake ~/nixos-config#${hostname}";
      nix-switchu = "sudo nixos-rebuild switch --upgrade --flake ~/nixos-config#${hostname}";
      nix-flake-update = "sudo nix flake update ~/nixos-config#";
      nix-clean = "sudo nix-collect-garbage && sudo nix-collect-garbage -d && sudo rm /nix/var/nix/gcroots/auto/* && nix-collect-garbage -d";

      # System
      ff = "fastfetch";
      psa = "ps auxf";
      
      # Git abbrs
      gin = "git init";
      gcl = "git clone";
      gcm = "git commit -m";
      ga = "git add";
      gaa = "git add --all";
      gs = "git status";
      gss = "git status --short";
      gst = "git stash";
      gp = "git push";
      gpl = "git pull";
      gdi = "git diff";
      gmr = "git merge";
      gco = "git checkout";
      gb = "git branch";
      gre = "git rebase";

      # Yt-dlp
      ytdl = "yt-dlp --output '%(title)s.%(ext)s'";
      ytdlp = "yt-dlp --audio-format mp3 -i --output '%(playlist_index)s-%(title)s.%(ext)s'";
      ytdla = "yt-dlp --audio-format mp3 -i -x -f bestaudio/best --output '%(playlist_index)s-%(title)s.%(ext)s'";
    };

    # Aliases
    shellAliases = {
      # Grep
      grep = "grep --color";

      # Eza
      ls = "eza -la --color=always --group-directories-first --icons";
      la = "eza -a --color=always --group-directories-first --icons";
      ll = "eza -l --color=always --group-directories-first --icons";
      lt = "eza -aT --color=always --group-directories-first --icons";

      # Locate
      locate = "plocate";

      # Python
      py = "python3";
    };
  };

  home.packages = (with pkgs; [
    fishPlugins.autopair
    fishPlugins.fzf-fish
    fishPlugins.pure
  ]);
}

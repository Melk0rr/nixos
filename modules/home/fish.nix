{ pkgs, hostname, ... }:

# Fish config
{
  programs.fish = {
    enable = true;

    plugins = [
      { name = "autopair"; src = pkgs.fishPlugins.autopair.src; }
      { name = "fzf"; src = pkgs.fishPlugins.fzf-fish.src; }
      { name = "pure"; src = pkgs.fishPlugins.pure.src; }
    ];

    # NOTE: Interactive shell
    interactiveShellInit = ''
      fish_vi_key_bindings

      set -gx EDITOR "nvim"
      set -gx TERMINAL "ghostty"
 
      oh-my-posh init fish | source

      # Set cursor style
      set fish_cursor_default block blink
      set fish_cursor_insert  line  blink
      set fish_cursor_visual  block
      set fish_vi_force_cursor 1

      function fish_user_key_bindings
        fish_default_key_bindings -M insert
        fish_vi_key_bindings --no-erase insert
      end

      function backup-file --argument filename
        sudo cp $filename $filename.bak
      end

      # Grep color
      function grep; grep --color $argv; end

      # Plocate
      function locate; plocate $argv; end

      # LS
      function ls; eza -la --color=always --group-directories-first --icons $argv; end
      function la; eza -a --color=always --group-directories-first --icons $argv; end
      function ll; eza -l --color=always --group-directories-first --icons $argv; end
      function lt; eza -aT --color=always --group-directories-first --icons $argv; end

      # Dev
      function py; python3 $argv; end
    '';
    
    # NOTE: Abbr
    shellAbbrs = {
      # Nix
      nix-switch = "sudo nixos-rebuild switch --flake ~/nixos-config#${hostname}";
      nix-switchu = "sudo nixos-rebuild switch --upgrade --flake ~/nixos-config#${hostname}";
      nix-switchfu = "sudo nix flake update --flake ~/nixos-config# && sudo nixos-rebuild switch --upgrade --flake ~/nixos-config#${hostname}";
      nix-flake-update = "sudo nix flake update --flake ~/nixos-config#";
      nix-clean = "sudo nix-collect-garbage && sudo nix-collect-garbage -d && sudo rm /nix/var/nix/gcroots/auto/* && nix-collect-garbage -d";

      # Processes and journals
      ffe = "fastfetch";
      psa = "ps auxf";
      psmem = "ps auxf | sort -nr -k 4";
      pscpu = "ps auxf | sort -nr -k 3";
      jctl = "journalctl -p 3 -xb";
      lsblk = "lsblk -o +uuid,name";

      # Patching
      patch-file = "diff -Naru";
      patch-dir = "diff -crB";

      # DNS
      dnstls-opt = "sudo sed -i '/^DNSOverTLS=/c\DNSOverTLS=opportunistic' /etc/systemd/resolved.conf; sudo systemctl restart systemd-resolved";
      dnstls-yes = "sudo sed -i '/^DNSOverTLS=/c\DNSOverTLS=yes' /etc/systemd/resolved.conf; sudo systemctl restart systemd-resolved";
      
      # Git & dev
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

      # yt-dlp
      ytdl = "yt-dlp --output '%(title)s.%(ext)s'";
      ytdlp = "yt-dlp --audio-format mp3 -i --output '%(playlist_index)s-%(title)s.%(ext)s'";
      ytdla = "yt-dlp --audio-format mp3 -i -x -f bestaudio/best --output '%(playlist_index)s-%(title)s.%(ext)s'";

      # Rclone
      rcc = "rclone copy";
    };

    # NOTE: Aliases
    shellAliases = {};
  };

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
    options = [
      "--cmd cd"
    ];
  };
}

{ pkgs, ... }:

# Packages to install
{
  home.packages = (with pkgs; [
    # Shell
    eza				                  # modern alternative to ls
    fzf				                  # fuzzy search
    lazygit                     # tui for git commands
    oh-my-posh			            # nice looking prompt
    plocate			                # faster locate
    translate-shell		          # translation from terminal
    yt-dlp			                # youtube content downloader
    zoxide			                # modern alternative to cd

    # Dev
    clang			                  # C
    go                          # Go
    nodejs                      # Node.js
    pipx			                  # to install isolated python apps
    python3			                # Python
    ripgrep                     # For livegrep
    ripgrep-all                 # For livegrep
    rustup			                # Rust
    nil                         # NixOS language server

    # Multimedia
    cmus			                  # console music player
    freetube			              # foss youtube video player
    imv				                  # lightweight image viewer
    inkscape			              # image and svg editor
    krita			                  # foss drawing app
    lollypop			              # music player and library
    mpv				                  # lightweight video player
    upscayl                     # foss AI image upscaler
    webcord                     # discord privacy fron-end

    # Desktop
    libreoffice-fresh		        # foss office suite
    localsend			              # foss alternative to airdrop
    mission-center		          # gtk app to track system resources
    mousam			                # gtk weather app
    papers                      # document viewer
    protonmail-desktop		      # proton mail desktop client
    proton-pass			            # proton pass desktop client
    qalculate-gtk		            # calculator using qalculate
    qbittorrent                 # torrent download application
    simplex-chat-desktop        # foss private messaging
  ]);
}

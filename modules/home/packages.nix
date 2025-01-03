{ inputs, pkgs, ... }:

# Packages to install
{
  home.packages = (with pkgs; [
    # Shell
    eza				# modern alternative to ls
    fzf				# fuzzy search
    oh-my-posh			# nice looking prompt
    translate-shell		# translation from terminal
    yt-dlp			# youtube content downloader
    yazi			# terminal file explorer
    zoxide			# modern alternative to cd

    # Multimedia
    cmus			# console music player
    freetube			# foss youtube video player
    imv				# lightweight image viewer
    inkscape			# image and svg editor
    krita			# foss drawing app
    lollypop			# music player and library
    mpv				# lightweight video player

    # Utility
    localsend			# foss alternative to airdrop
    missioncenter		# gtk app to track system resources
    mousam			# gtk weather app
    protonmail-desktop		# proton mail desktop client
    proton-pass			# proton pass desktop client
    qalculate-gtk		# calculator using qalculate
  ]);
}

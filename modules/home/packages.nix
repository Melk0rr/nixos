{ inputs, pkgs, ... }:

# Packages to install
{
  home.packages = (with pkgs; [
    # Shell
    eza
    fzf
    yt-dlp
    zoxide

    # Multimedia
    cmus			# console music player
    freetube			# foss youtube video player
    imv				# lightweight image viewer
    krita			# foss drawing app
    lollypop			# music player and library
    mpv				# lightweight video player

    # Utility
    localsend			# foss alternative to airdrop
    protonmail-desktop		# proton mail desktop client
    proton-pass			# proton pass desktop client
  ]);
}

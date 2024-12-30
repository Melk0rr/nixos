{ pkgs, ... }:

# Git config
{
  programs.git = {
    enable = true;
    
    userName = "me1k0r";
    userEmail = "runner-me1k0r@proton.me";
    
    extraConfig = {
      init.defaultBranch = "master";
      credential.helper = "store";
      merge.conflictStyle = "diff3";
      diff.colorMoved = "default";
    };
  };
}

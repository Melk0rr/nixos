{ pkgs, ... }:

# Oh my posh config
{
  programs.oh-my-posh = {
    enable = true;
    enableFishIntegration = true;
    settings = builtins.fromJSON (builtins.unsafeDiscardStringContext (builtins.readFile ./omp.json));
  };
}

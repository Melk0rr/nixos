{ pkgs, ... }: let
  
  songdetail = pkgs.writeScriptBin "compress" (builtins.readFile ./scripts/songdetail.sh);

# Scripts definitions
in {
  home.packages = with pkgs; [
    songdetail
  ];
}

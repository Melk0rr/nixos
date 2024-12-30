{ inputs, pkgs, hostname, ... }:

{
  home.packages = (
    with pkgs;
    [
      (
        if (host == "onyx") then
          inputs.zen-browser.packages."${system}".generic
        else
          inputs.zen-browser.packages."${system}".specific
      )
    ]
  );
}

{ inputs, pkgs, hostname, ... }:

{
  home.packages = (
    with pkgs;
    [
      (
        if (hostname == "onyx") then
          inputs.zen-browser.packages."${system}".generic
        else
          inputs.zen-browser.packages."${system}".specific
      )
    ]
  );
}

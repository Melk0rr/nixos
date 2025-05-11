{ pkgs, inputs, username, hostname, ... }:

{
  # Home manager configuration
  # home-manager --flake .#username@hostname
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = {
      inherit inputs username hostname;
    };
    users.${username} = {
      imports =
        if (hostname == "onyx") then
          [
            ./../home/default.onyx.nix
            inputs.catppuccin.homeModules.catppuccin
          ]
        else
          [ ./../home ];

      home = {
        username = "${username}";
        homeDirectory = "/home/${username}";
        stateVersion = "24.11";
      };
      programs.home-manager.enable = true;
    };
  };

  # Users definition
  users = {
    users."${username}" = {
      isNormalUser = true;
      description = "${username}";
      extraGroups = [ "networkmanager" "wheel" ];
      shell = pkgs.fish;
    };
  };
  nix.settings.allowed-users = [ "${username}" ];
}

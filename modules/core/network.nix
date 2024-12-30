{ pkgs, hostname, ... }:

# Network config
{
  networking = {
    hostName = "${hostname}";
    networkmanager.enable = true;
    nameservers = [
      "45.90.28.0"
      "45.90.30.0"
    ];
    
    firewall = {
      enable = true;
      allowedTCPPorts = [
	22	
        80
        443
      ];
      allowedUDPPorts = [
      ];
    };
  };
  
  environment.systemPackages = with pkgs; [
    networkmanagerapplet
  ];
}

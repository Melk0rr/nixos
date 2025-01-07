{ pkgs, hostname, ... }:

# Network config
{
  networking = {
    hostName = "${hostname}";
    networkmanager = {
      enable = true;
      dns = "systemd-resolved";
      insertNameservers = [
        "45.90.28.0"
        "45.90.30.0"
      ];
    };
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
        53317
      ];
      allowedUDPPorts = [
        53317
      ];
    };
  };

  services.resolved = {
    enable = true;
    extraConfig = ''
      DNS=45.90.28.0#onyx-9cd4d7.dns.nextdns.io
      DNS=2a07:a8c0::#onyx-9cd4d7.dns.nextdns.io
      DNS=45.90.30.0#onyx-9cd4d7.dns.nextdns.io
      DNS=2a07:a8c1::#onyx-9cd4d7.dns.nextdns.io
      DNSOverTLS=yes
    '';
  };
  
  environment.systemPackages = with pkgs; [
    networkmanagerapplet
  ];
}

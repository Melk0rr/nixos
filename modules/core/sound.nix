{ pkgs, ... }:

# Base sound config
{
  services.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # jack.enable = true;
  };
  environment.systemPackages = with pkgs; [
    pulseaudioFull
  ];
}

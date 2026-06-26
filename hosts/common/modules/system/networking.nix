{ ... }:
{
  networking.networkmanager.enable = true;
  networking.nftables.enable = true;
  services.resolved.enable = true;
  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  networking.firewall.trustedInterfaces = [ "virbr0" ];
  networking.nameservers = [
    "1.1.1.1"
    "8.8.8.8"
  ];
}

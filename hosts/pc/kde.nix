{ pkgs, ... }:
{
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    # settings = {
    #   Theme.CursorTheme = "Bibata-Modern-Classic";
    # };
  };

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    discover
    konsole
    kate
    qrca
  ];
  environment.systemPackages = with pkgs.kdePackages; [
    sddm-kcm
  ];
}

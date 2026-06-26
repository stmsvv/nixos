{ pkgs, ... }:
{
  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
    desktopManager.xfce.enable = true;
    xkb = {
      layout = "us,ru";
      options = "grp:win_space_toggle";
    };
  };
  environment.xfce.excludePackages = with pkgs.xfce; [
    xfce4-terminal
  ];
}

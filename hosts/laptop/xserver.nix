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
    excludePackages = with pkgs; [
      xterm
    ];
  };
  environment.xfce.excludePackages = with pkgs; [
    xfce4-terminal
  ];
}

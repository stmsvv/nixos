{ pkgs, ... }:
{
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
    config = {
      hyprland = {
        "org.freedesktop.impl.portal.FileChooser" = [ "kde" ];
      };
    };
  };
}

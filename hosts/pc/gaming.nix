{ pkgs, ... }:
{
  programs = {
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      package = pkgs.steam;
    };
    gamemode.enable = true;
    gamescope.enable = true;
  };
  environment.systemPackages = with pkgs; [
    wineWow64Packages.stable
    winetricks
    heroic
    protonup-qt
    mangohud
  ];
}

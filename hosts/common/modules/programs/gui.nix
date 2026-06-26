{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    nsxiv
    obsidian
    anki
    pavucontrol
    woeusb-ng
    telegram-desktop
    qbittorrent
    vlc
    onlyoffice-desktopeditors
    libreoffice-qt
    hunspell
    kdePackages.ark
  ];
}

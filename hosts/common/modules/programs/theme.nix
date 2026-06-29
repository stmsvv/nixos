{ pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = true;
    fontDir.enable = true;
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      nerd-fonts.jetbrains-mono
      nerd-fonts.iosevka
      liberation_ttf
      corefonts
      vista-fonts
      dejavu_fonts
      freefont_ttf
    ];
  };
  environment.systemPackages = with pkgs; [
    bibata-cursors
    tela-icon-theme
    nordic
    nwg-look
    kdePackages.qt6ct
  ];
}

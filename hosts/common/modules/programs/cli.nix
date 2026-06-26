{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    starship
    jq
    tmux
    ripgrep
    fd
    gnumake
    btop
    wget
    ddcutil
    git
    ntfs3g
    brightnessctl
    gparted
    xdg-user-dirs
    wl-clipboard
    wl-clip-persist
    desktop-file-utils
    hunspellDicts.en_US
    hunspellDicts.ru_RU
  ];
}

{ pkgs, ... }:
{
  programs = {
    dconf.enable = true;
    nix-ld = {
      enable = true;
      libraries = with pkgs; [ freetype ];
    };
    firefox.enable = true;
    amnezia-vpn.enable = true;
    localsend = {
      enable = true;
      openFirewall = true;
    };
    fish = {
      enable = true;
    };
    neovim = {
      enable = true;
      defaultEditor = true;
    };
    throne = {
      enable = true;
      tunMode.enable = true;
    };
  };
}

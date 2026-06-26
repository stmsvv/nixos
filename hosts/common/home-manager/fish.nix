{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
      starship init fish | source
    '';
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch";
    };
  };
}

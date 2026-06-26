{ ... }: {
  programs.bash = {
    enable = true;
    initExtra = ''
      eval "$(starship init bash)"
    '';
    shellAliases = {
      ll = "ls -l";
      rebuild = "sudo nixos-rebuild switch";
    };
  };
}

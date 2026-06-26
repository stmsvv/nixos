{ ... }:
{
  imports = [
    ./options.nix
    ./keymaps.nix
    ./plugins/lsp.nix
    ./plugins/comp.nix
    ./plugins/ui.nix
  ];

  programs.nixvim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };
}

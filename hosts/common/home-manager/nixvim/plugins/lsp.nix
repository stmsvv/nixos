{ pkgs, ... }:
{
  programs.nixvim.plugins = {
    treesitter.enable = true;

    lsp = {
      enable = true;
      servers = {
        clangd = {
          enable = true;
          package = pkgs.clang-tools;
        };
        nixd = {
          enable = true;
          package = pkgs.nixd;
        };
        pyright = {
          enable = true;
          package = pkgs.pyright;
        };
        lua_ls = {
          enable = true;
          package = pkgs.lua-language-server;
        };
      };
    };

    conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          nix = [ "nixfmt" ];
          python = [ "black" ];
        };
        format_on_save = {
          lsp_format = "fallback";
          timeout_ms = 500;
        };
      };
    };
  };
}

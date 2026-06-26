{ ... }:
{
  programs.nixvim.plugins = {
    treesitter.enable = true;

    lsp = {
      enable = true;
      servers = {
        clangd.enable = true;
        nixd.enable = true;
        pyright.enable = true;
        lua_ls.enable = true;
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

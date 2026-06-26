{ ... }:
{
  programs.nixvim.plugins = {
    blink-cmp = {
      enable = true;
      setupLspCapabilities = false;
      settings = {
        completion = {
          ghost_text.enabled = true;
          menu.enabled = true;
          documentation.auto_show = true;
        };
        sources.default = [
          "lsp"
          "path"
          "snippets"
          "buffer"
        ];
        signature.enabled = true;
      };
    };
  };
}

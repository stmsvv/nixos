{ ... }:
{
  programs.nixvim = {
    colorschemes.nord.enable = true;

    plugins = {
      which-key.enable = true;
      lualine.enable = true;
      nvim-tree.enable = true;
      oil.enable = true;
      telescope.enable = true;
      render-markdown.enable = true;
      toggleterm.enable = true;
      gitsigns.enable = true;
      undotree.enable = true;
      diffview.enable = true;

      bufferline = {
        enable = true;
        settings = {
          options = {
            diagnostics = "nvim_lsp";
            diagnostics_indicator = # Lua
              ''
                function(count, level, diagnostics_dict, context)
                  local s = ""
                  for e, n in pairs(diagnostics_dict) do
                    local sym = e == "error" and " "
                      or (e == "warning" and " " or "" )
                    if(sym ~= "") then
                      s = s .. " " .. n .. sym
                    end
                  end
                  return s
                end
              '';
            mode = "buffers";

            close_icon = " ";
            buffer_close_icon = "󰱝 ";
            modified_icon = "󰔯 ";

            offsets = [
              {
                filetype = "NvimTree";
                text = "File Explorer";
                text_align = "center";
                separator = true;
              }
              {
                filetype = "undotree";
                text = "Undo Tree";
                text_align = "center";
                separator = true;
              }
            ];

            indicator = {
              style = "icon";
              icon = "▎";
            };

          };
        };
      };

      mini = {
        enable = true;
        modules = {
          pairs = { };
          comment = { };
          surround = { };
          ai = { };
          indentscope = { };
          icons = { };
          starter = { };
        };
      };

      web-devicons.enable = true;
    };
  };
}

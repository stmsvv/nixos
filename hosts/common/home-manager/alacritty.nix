{ ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      general = {
        live_config_reload = true;
        import = [
          "~/.config/alacritty/themes/noctalia.toml"
        ];
      };
      window = {
        dynamic_padding = true;
        opacity = 0.9;
        blur = true;
        padding = {
          x = 0;
          y = 0;
        };
      };
      font =
        let
          fontName = "JetBrainsMono Nerd Font";
        in
        {
          size = 13.0;
          normal = {
            family = "${fontName}";
            style = "Normal";
          };
          bold = {
            family = "${fontName}";
            style = "Bold";
          };
          bold_italic = {
            family = "${fontName}";
            style = "Bold Italic";
          };
          italic = {
            family = "${fontName}";
            style = "Italic";
          };
        };
    };
  };
}

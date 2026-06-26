{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    package = pkgs.kitty;
    settings =
      let
        fontName = "Iosevka Nerd Font Mono";
      in
      {
        confirm_os_window_close = 0;
        enable_audio_bell = false;
        # Visual settings
        tab_bar_style = "powerline";
        dynamic_background_opacity = true;
        background_opacity = "0.9";
        background_blur = 1;
        window_margin_width = "0 0";
        font_size = 12.0;
        adjust_line_height = 0;
        adjust_column_width = 0;
        font_family = "${fontName} Regular";
        bold_font = "${fontName} Bold";
        italic_font = "${fontName} Italic";
        bold_italic_font = "${fontName} Bold Italic";
        shell_integration = "enabled";
        # Cursor animation
        cursor_trail = 1;
        cursor_trail_decay = "0.1 0.4";
        # Color theme
        include = "~/.config/kitty/themes/noctalia.conf";
      };
    keybindings = {
      "ctrl+shift+l" = "next_tab";
      "ctrl+shift+h" = "previous_tab";
    };
  };
}

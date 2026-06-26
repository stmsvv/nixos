{ pkgs, ... }:
{
  programs.ghostty = {
    enable = false;
    package = if pkgs.stdenv.isDarwin then pkgs.ghostty-bin else pkgs.ghostty;

    # Enable for whichever shell you plan to use!
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableZshIntegration = true;

    settings = {
      keybind = "super+space=unbind";
      theme = "Nord";
      background-opacity = "0.90";
      background-blur = true;
      window-padding-x = 8;
      window-padding-y = 8;
      font-family = "JetBrainsMono Nerd Font";
      font-family-bold = "JetBrainsMono Nerd Font";
      font-family-italic = "JetBrainsMono Nerd Font";
      font-family-bold-italic = "JetBrainsMono Nerd Font";
    };
  };
}

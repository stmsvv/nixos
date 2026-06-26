{ inputs, pkgs, ... }:
{
  programs.firefox = {
    enable = true;

    # Установка русского языка
    languagePacks = [ "ru" ];

    # Настройки профиля по умолчанию
    profiles.default = {
      id = 0;
      isDefault = true;

      settings = {
        "intl.locale.requested" = "ru";
        "browser.startup.page" = 0;
        "browser.newtabpage.enabled" = false;
        "privacy.resistFingerprinting" = true;
      };

      search = {
        force = true;
        default = "google";
      };

      extensions.packages = with inputs.firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
        bitwarden
        ublock-origin
      ];
    };
  };
}

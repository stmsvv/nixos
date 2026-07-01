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
        default = "brave-search";
        engines = {
          brave-search = {
            name = "Brave Search";
            urls = [ { template = "https://search.brave.com/search?q={searchTerms}"; } ];
            icon = "https://imgs.search.brave.com/TRsVx8qfnCdyZitMOgJdMTyRQVKJ7p2oq4jH-6bq1-A/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWdz/LnNlYXJjaC5icmF2/ZS5jb20vT2kxZExW/SGM2YU1rN2VVSjd0/N3ZMdUVpVTNmNTNO/U3JiSjNJVFRoQkFR/WS9yczpmaXQ6NTAw/OjA6MDowL2c6Y2Uv/YUhSMGNITTZMeTlo/YzNObC9kSE11YzNS/cFkydHdibWN1L1ky/OXRMMmx0WVdkbGN5/ODIvTWpOaFpqVTBa/REkzWkRRNS9ORFpo/WTJWaFpUSm1PREV1/L2NHNW4";
            definedAliases = [ "@brave" ];
          };
          yandex = {
            name = "Яндекс";
            urls = [ { template = "https://ya.ru/search?text={searchTerms}"; } ];
            icon = "https://yandex.ru/favicon.ico";
            definedAliases = [ "@ya" ];
          };
        };
      };

      extensions.packages = with inputs.firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
        bitwarden
        ublock-origin
        sponsorblock
      ];
    };
  };
}

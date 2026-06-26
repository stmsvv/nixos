# NixOS Configuration

Моя конфигурация NixOS (unstable) с KDE Plasma + Hyprland/Niri опциями.

## Структура

- `hosts/pc/` — конфигурация моего ПК
- `modules/` — переиспользуемые модули
  - `system/` — системные настройки
  - `programs/` — программы и пакеты
  - `services/` — сервисы
  - `home-manager/` — Home Manager конфиг
- `flake.nix` — входная точка

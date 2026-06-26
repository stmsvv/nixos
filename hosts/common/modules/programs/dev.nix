{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    gcc
    clang-tools
    python3
    nil
    nixd
    clang
    nixfmt
    black
    nodejs
  ];
}

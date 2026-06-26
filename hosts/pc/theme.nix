{ pkgs, inputs, ... }:
{

  environment.systemPackages = with pkgs; [
    kdePackages.qtstyleplugin-kvantum
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.kwin-effects-better-blur-dx.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}

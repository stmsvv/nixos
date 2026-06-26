{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    obs-studio
    krita
    brave
    discord
];
}

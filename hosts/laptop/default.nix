{ ... }: {
  imports = [
    ./nixos.nix
    ./xserver.nix
    ./hardware-configuration.nix
    ./boot.nix
    ./services.nix
    ./gpu.nix
  ];
}

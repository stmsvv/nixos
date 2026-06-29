{ lib, pkgs, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelParams = [ "acpi_backlight=native" ];
  boot.supportedFilesystems = [ "ntfs3" ];
  boot.kernelPackages = pkgs.linuxPackages_latest;

  fileSystems =
    let
      ntfs-drives = [
        "/mnt/storage"
        "/mnt/games"
      ];
    in
    lib.genAttrs ntfs-drives (path: {
      options = [
        "uid=1000"
        "nofail"
      ];
    });

  # Create 8GB swap-file at /var/lib/swapfile
  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 8 * 1024; # 8 GiB
    }
  ];
}

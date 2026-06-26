{ pkgs, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelParams = [ "acpi_backlight=native" ];
  boot.supportedFilesystems = [ "ntfs3" ];
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Mount devices
  fileSystems."/mnt/games" = {
    device = "/dev/disk/by-uuid/226C12E66C12B48F";
    fsType = "ntfs3";
    options = [
      # If you don't have this options attribute, it'll default to "defaults"
      # boot options for fstab. Search up fstab mount options you can use
      "users" # Allows any user to mount and unmount
      "nofail" # Prevent system from failing if this drive doesn't mount
      "exec" # Permit execution of binaries and other executable files
      "rw"
      "uid=1000"
      "gid=100"
    ];
  };
  fileSystems."/mnt/storage" = {
    device = "/dev/disk/by-uuid/F0B0F72CB0F6F7C4";
    fsType = "ntfs3";
    options = [
      "users"
      "nofail"
      "exec"
      "rw"
      "uid=1000"
      "gid=100"
    ];
  };
  # Create 8GB swap-file at /var/lib/swapfile
  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 8 * 1024; # 8 GiB
    }
  ];
}

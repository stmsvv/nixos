{ pkgs, ... }:
{
  users = {
    users.arthur = {
      isNormalUser = true;
      extraGroups = [
        "wheel" # Enable ‘sudo’ for the user.
        "i2c"
        "libvirtd"
        "uinput"
      ];
      # packages = with pkgs; [
      # ];
    };
    defaultUserShell = pkgs.fish;
  };
}

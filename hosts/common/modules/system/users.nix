{ pkgs, ... }:
{
  users = {
    users.arthur = {
      isNormalUser = true;
      extraGroups = [
        "wheel" # Enable ‘sudo’ for the user.
        "i2c"
        "uinput"
      ];
      # packages = with pkgs; [
      # ];
    };
    defaultUserShell = pkgs.fish;
  };
}

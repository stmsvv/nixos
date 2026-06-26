{ ... }:
{
  boot.kernelParams = [
    "nvidia_drm.modeset=1"
    "nvidia_drm.fbdev=1"
  ];

  hardware = {
    graphics.enable = true;
    graphics.enable32Bit = true;

    nvidia.open = true;
    nvidia.modesetting.enable = true;
    nvidia.powerManagement.enable = true;
  };
  services.xserver.videoDrivers = [ "nvidia" ];
}

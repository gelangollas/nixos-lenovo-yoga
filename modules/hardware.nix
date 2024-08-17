{ config, lib, ... }: {
  hardware.sensor.iio.enable = true;
  services.xserver.wacom.enable = lib.mkDefault config.services.xserver.enable;
  
}

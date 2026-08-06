{ config, pkgs, ... }:

{
  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    devices = [ "nodev" ];
    useOSProber = true;     #自动检测其他大鸡巴系统
    configurationLimit = 10;
  };

  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
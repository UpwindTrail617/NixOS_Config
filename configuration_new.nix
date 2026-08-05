{ config, pkgs, ... }:

{
  # Modules
  imports = [
    # Hardware
    ./hardware-configuration.nix

    # Bootloader
    ./modules/boot/grub.nix

    # Desktop
    ./modules/desktop/gnome.nix

    # Locale(English Default)
    ./modules/locale/en_US.nix
    #./modules/locale/zh_CN.nix

    # Input
    ./modules/input/ibus.nix

    # Shell
    ./modules/shell/zsh.nix

    # Audio
    ./modules/audio/pipewire.nix

    # Bluetooth
    ./modules/bluetooth/bluetooth.nix

    # User
    ./modules/user/reimilia.nix

    # Network
    ./modules/network/network.nix

    # Mirrors
    ./modules/mirrors/ustc.nix

    # Packages
    ./modules/packages/base.nix      # Base
    ./modules/packages/applications.nix     # Applications
  ];

  # Firmware
  hardware.enableAllFirmware = true;

  # System Version
  system.stateVersion = "26.05";
  
}
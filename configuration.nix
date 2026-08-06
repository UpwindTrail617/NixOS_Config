{ config, pkgs, ... }:

{
  # Modules
  imports = [
    # Hardware
    ./hardware-configuration.nix

    # Bootloader
    ./modules/boot/grub.nix     # GRUB(BIOS+UEFI)
    ./modules/boot/grub-theme.nix     # GRUB Themes(Reimu)
    #./modules/boot/systemd-boot.nix     #systemd-boot(UEFI-Only)

    # Desktop
    ./modules/desktop/gnome.nix     #GNOME
    #./modules/desktop/kde.nix     #KDE Plasma
    #./modules/desktop/xfce.nix     #XFCE
    #./modules/desktop/lxqt.nix     #LXQT
    #./modules/desktop/hyprland     #Hyprland
    #./modules/desktop/cosmic.nix     #COSMIC

    # Locale(English Default)
    ./modules/locale/en_US.nix     #English(US)
    #./modules/locale/zh_CN.nix     #中文(中国)

    # Input
    ./modules/input/ibus.nix     #IBus
    #./modules/input/fcitx5.nix     #Fcitx5

    # Shell
    ./modules/shell/zsh.nix     #ZSH
    #./modules/shell/bash.nix     #Bash

    # Audio
    ./modules/audio/pipewire.nix

    # Bluetooth
    ./modules/bluetooth/bluetooth.nix

    # Users
    ./modules/users/reimilia.nix

    # Network
    ./modules/network/network.nix

    # Mirrors
    ./modules/mirrors/ustc.nix     #中科大
    #./modules/mirrors/tuna.nix     #清华
    #./modules/mirrors/nju.nix     #南京大

    # Packages
    ./modules/packages/base.nix      # Base
    ./modules/packages/applications.nix     # Applications
  ];

  # Firmware
  hardware.enableAllFirmware = true;

  # System Version
  system.stateVersion = "26.05";
  
}
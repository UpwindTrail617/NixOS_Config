{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix

    ./modules/boot/grub.nix
    ./modules/desktop/gnome.nix
    ./modules/input/ibus.nix
    ./modules/shell/zsh.nix
    #./modules/packages.nix
  ];

  networking.hostName = "Oh My NixOS";

  users.users.reimilia = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };
}
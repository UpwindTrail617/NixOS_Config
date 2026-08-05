{ config, pkgs, ... }:

{
  # allow non-free packages
  nixpkgs.config.allowUnfree = true;

  # System Packages
  environment.systemPackages = with pkgs; [
    # Edit
    nano
    vim

    # Network Tools
    curl
    wget

    # UnPack
    unzip
    p7zip

    # SystemTools
    fastfetch
  ];
}
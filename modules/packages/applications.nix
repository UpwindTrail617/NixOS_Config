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
    networkmanager
    curl
    wget
    git

    # SystemTools
    fastfetch
    os-prober
    unzip
    openssh

    # 忘记加浏览器了qaq
    firefox
  ];
}
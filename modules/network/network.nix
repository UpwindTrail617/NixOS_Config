{ config, pkgs, ... }:

{
  # Network
  networking.networkmanager.enable = true;

  # Hostname
  networking.hostName = "oh-my-nixos";

  # TimeZone
  time.timeZone = "Asia/Shanghai";

  # Optional:Network Tools
  #environment.systemPackages = with pkgs; [
  #  networkmanagerapplet     # NetworkManager GUI
  #  nmap     # Network Scan Tools
  #];
}
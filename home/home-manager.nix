{ pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./shell/zsh.nix     #默认使用ZSH
    #./shell/bash.nix     #可选Bash
    ./terminal.nix
  ];

  home.stateVersion = "26.05";
  home.username = "reimilia";
  home.homeDirectory = "/home/reimilia";
}
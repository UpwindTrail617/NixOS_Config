{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    #Browser
    firefox

    # Code Tools
    git
    gcc
    gnumake
    cmake
    clang-tools

    # Code Language
    python3
  ];
}
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # 终端工具
    bat
    tree
    htop
    lolcat
    cowsay
    fortune

    # 编程语言
    python3
    rustc
    cargo

    # 编程程序
    gcc
    gnumake
    cmake
  ];
}
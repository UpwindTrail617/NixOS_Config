{ pkgs, ... }:

{
  # 环境变量
  home.sessionVariables = {
    EDITOR = "vim";
    VISUAL = "vim";
    PAGER = "less";
    BROWSER = "firefox";
  };

  # 别名
  home.shellAliases = {
    sys-update = "sudo nixos-rebuild switch --flake .#reimilia";
    clean = "sudo nix-collect-garbage -d";
    ff = "fastfetch";
    ll = "ls -al";
    la = "ls -la";
  };
}
{ pkgs, ... }:

{
  programs.bash.enable = true;

  users.defaultUserShell = pkgs.bash;
}
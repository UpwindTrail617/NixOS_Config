{ pkgs, ... }:

{
  programs.bash = {
    enable = true;
  };

  home.file.".bashrc".force = true;
}
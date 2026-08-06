{ config, pkgs, ... }:

  {
    programs.hyprland.enable = true;

    xdg.portal.enable = true;
    xdg.portal.extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
    ];

    # Hyprland Wallpaper
    environment.systemPackages = with pkgs; [
      hyprpaper
    ];

    # Crate Hyprland Config
    home.file.".config/hypr/hyprpaper.conf" = {
      text = ''
        preload = /etc/nixos/themes/wallpapers/reimu.png
        wallpaper = ,/etc/nixos/themes/wallpapers/reimu.png
        splash = false
      '';
    };

    # hyprpaper auto start
    systemd.user.services.hyprpaper = {
      description = "Hyprland wallpaper service";
      after = [ "graphical-session.target" ];
      wantedBy = [ "graphical-session.target" ];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.hyprpaper}/bin/hyprpaper";
        Restart = "on-failure";
      };
    };
  }
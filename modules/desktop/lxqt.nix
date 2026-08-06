{
  services.xserver.enable = true;

  services.displayManager.sddm.enable = true;
  services.xserver.desktopManager.lxqt.enable = true;
  
  # LXQT Wallpaper
  environment.etc."xdg/lxqt/lxqt.conf".text = ''
    [General]
    wallpaper=/etc/nixos/themes/wallpaper/alice.png
  '';
}
{
  services.xserver.enable = true;

  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.enable = true;

  # KDE Plasma Wallpaper
  services.xserver.desktopManager.plasma6.extraSettings = ''
    [Wallpaper]
    Image=file:///etc/nixos/themes/wallpaper/sakura.png
  '';
}
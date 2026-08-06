{
  services.xserver.enable = true;

  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;

  # Default Wallpaper
  services.xserver.desktopManager.gnome.extraGSettingsOverrides = ''
    [org.gnome.desktop.background]
    picture-uri='file:///etc/nixos/themes/wallpapers/youmu.png'
    picture-uri-dark='file:///etc/nixos/themes/wallpapers/youmu.png'
  '';
}
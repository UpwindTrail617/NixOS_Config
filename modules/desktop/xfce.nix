{
  # X11
  services.xserver.enable = true;

  # Enable XFCE
  services.xserver.desktopManager.xfce.enable = true;

  # Enable SDDM
  services.displayManager.sddm.enable = true;

  # XFCE Wallpaper
  environment.etc."xdg/xfce4/desktop/backdrop.xml".text = ''
    <?xml version="1.0" encoding="UTF-8"?>
    <backdrop>
      <image>/etc/nixos/themes/wallpapers/baka.png</image>
      </backdrop>
    '';
}
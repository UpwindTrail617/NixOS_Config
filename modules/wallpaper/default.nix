{ config, pkgs, lib, ... }:

let 
  # Crate Wallpaper
  wallpaper = pkgs.runCommand "wallpaper" { } ''
    mkdir -p $out/share/backgrounds
    cp ${../../themes/wallpaper/default.png} $out/share/backgrounds/default.png
    '';

    # Set Wallpaper Path
    wallpaperPath = "/run/current-system/sw/share/backgrounds/default.png";

    # Crate script
    set-wallpaper-script = pkgs.writeShellScriptBin "set-wallpaper" ''
        WALLPAPER="${wallpaperPath}"

      # What Desktop?
       case "$XDG_CURRENT_DESKTOP" in
      *GNOME*)
        echo "Setting wallpaper for GNOME"
        ${pkgs.glib}/bin/gsettings set org.gnome.desktop.background picture-uri "file://$WALLPAPER"
        ${pkgs.glib}/bin/gsettings set org.gnome.desktop.background picture-uri-dark "file://$WALLPAPER"
        ;;
      *KDE*|*Plasma*)
        echo "Setting wallpaper for KDE Plasma"
        ${pkgs.libsForQt5.plasma-workspace}/bin/plasma-apply-wallpaperimage "$WALLPAPER"
        ;;
      *COSMIC*)
        echo "Setting wallpaper for COSMIC"
        # COSMIC 通过配置文件设置壁纸 [citation:2][citation:5][citation:8]
        mkdir -p ~/.config/cosmic/com.system76.CosmicBackground/v1/
        cat > ~/.config/cosmic/com.system76.CosmicBackground/v1/all << EOF
        (
          filter_by_theme: false,
          filter_method: Lanczos,
          output: "all",
          rotation_frequency: 300,
          sampling_method: Alphanumeric,
          scaling_mode: Zoom,
          source: Path("$WALLPAPER"),
        )
        EOF
        echo "true" > ~/.config/cosmic/com.system76.CosmicBackground/v1/same-on-all
        ;;
      *XFCE*)
        echo "Setting wallpaper for XFCE"
        ${pkgs.xfce.xfconf}/bin/xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s "$WALLPAPER" || true
        ;;
      *)
        echo "Unknown desktop environment: $XDG_CURRENT_DESKTOP"
        echo "Wallpaper installed at: $WALLPAPER"
        ;;
    esac
  '';

in  {
  # Add WallPaper
  environment.systemPackages = [ wallpaper set-wallpaper-script ];

  # Crate systemd user services
  systemd.user.services.set-wallpaper = {
    description = "Set wallpaper for any desktop environment";
    after = [ "graphical-session.target" ];
    conditionEnvironment = [ "DISPLAY" ];
    wantedBy = [ "graphical-session.target" ];
    serviceConfig = {
      Type = "oneshot";
      ExecStart = "${set-wallpaper-script}/bin/set-wallpaper";
      RemainAfterExit = true;
    };
  };
}
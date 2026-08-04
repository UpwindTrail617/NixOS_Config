  { config, pkgs, ... }:

  {

    # Base Import
    imports =
      [
        ./hardware-configuration.nix
      ];

    # Bootloader
    
      # UEFI(Systemd-boot)
      boot.loader.systemd-boot.enable = true;

      # Allow Edit EFI NVRAM
      boot.loader.efi.canTouchEfiVariables = true;

    #Kernel
    boot.kernelPackages = pkgs.linuxPackages_latest;

    # Network
    networking.networkmanager.enable = true;
    
    #Hostname
    networking.hostName = "NixOS";

    #TimeZone
    time.timeZone = "Asia/Shanghai";

    #Locale
    i18n.defaultLocale = "en_US.UTF-8";

    # Desktop
    services.xserver.enable = true;
      # GNOME
      services.displayManager.gdm.enable = true;
      services.desktopManager.gnome.enable = true;
      # KDE Plasma
      #services.displayManager.sddm.enable = true;
      #services.desktopManager.plasma6.enable = true;

    # InputMethod
    i18n.inputMethod = {
      enable = true;
      type = "ibus";

      ibus.engines = with
        pkgs.ibus-engines; [
          rime
        ];
    };

    # Audio
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };

    #Bluetooth
    hardware.bluetooth.enable = true;
    services.blueman.enable = true;

    # Users
    users.users.UpwindTrail = {
      isNormalUser = true;
      description = "UpwindTrail";
      
      extraGroups = [
        "wheel"
        "networkmanager"
        "video"
        "audio"
      ];
    };

    # Sudo
    security.sudo.wheelNeedsPassword = true;

    # Packages
    environment.systemPackages = with pkgs; [

      # Code
      vim
      nano
      git
      gnumake
      gcc

      #Network
      wget
      curl

      # SystemInfo
      fastfetch

      #unpack
      unzip
      p7zip

    ];

    # non-free Packages
    nixpkgs.config.allowUnfree = true;

    # NixOS Substituters Form China
    nix.settings = {

      substituters = [
        "https://mirrors.ustc.edu.cn/nix-channels/store"
          "https://cache.nixos.org/"     
      ];
      
      trusted-substituters = [
        "https://mirrors.ustc.edu.cn/nix-channels/store"
          "https://cache.nixos.org/"
        ];
    };

    # ZSH
    programs.zsh.enable = true;

    # Git
    programs.git.enable = true;

    #VMware
    #virtualisation.vmware.guest.enable = true;

    # Firmware
    hardware.enableAllFirmware = true;

    #SystemVer.
    system.stateVersion = "26.05";
  }
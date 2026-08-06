{ config, pkgs, ... }: {
    system.autoUpgrade = {
        enable = true;
        allowReboot = false;
        flake = "/etc/nixos";
        flags = [
            "--update-input" "nixpkgs"
            "--option" "substituters" "https://mirrors.ustc.edu.cn/nix-channels/store"
        ];
        dates = "03:00";     # AM3:00 Auto Update
        randomizedDelaySec = "45min";
    };
}
{ config, pkgs, ... }:

{
  users.users.reimilia = {
    isNormalUser = true;
    description = "Reimilia";

    extraGroups = [
      "wheel"     # Sudo
      "networkmanager"     # Network
      "video"     # video/display
      "audio"     # audio
      "input"     # inputmethod
      "bluetooth"     # Bluetooth
    ];

    # TempPassword(Please run "passwd" in the termimal after first login)
    initialPassword = "123456";

    # Or use hashedPassword(Safety):
    #hashedPassword = "";     # use mkpasswd -m sha512crypt
  };

  # sudo: wheel need password
  security.sudo.wheelNeedsPassword = true;
}
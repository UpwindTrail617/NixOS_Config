# NixOS Config for UpwindTrail

Tips:
This Config uses a TempPassword
Please Run "passwd" in the termimal after login.
TempPassword:123456

Kernel:
- Linux LTS Kernel
You can choose not to use the LTS Kernel,just comment out the relevant code

Bootloader:
GRUB(Default)
systemd-boot(Optional)
  ---Not recommended "systemd-boot",because it only supports UEFI

Vmware Tools:
You can enable VMware Tools by removeing the corresponding comments

InputMethod:
- IBus
- Rime

Desktop:
  Default:
  - GNOME
  - Wayland
  Optional:
  - KDE Plasma

Tools:
- ZSH

Target:
- VMware Test
- Ryzen 3500U
# Reimilia NixOS Configuration

⚠重要提示：不要同时启用多个同类型的功能模块，会引起冲突！

# 特性╰(*°▽°*)╯
- 默认GNOME桌面环境，可选很多种桌面环境
- IBus + Rime 输入法
- 将ZSH作为默认SHELL
- 使用GRUB作为引导加载器
- ——————默认启用东方主题，可前往configuration.nix中关闭
- 默认全英文环境，可选为中文环境
- 模块化配置结构

# 如何使用ヾ(•ω•`)o
- 1.使用cfdisk分区(如果你喜欢用别的也可以)
- ⚠提示：最好是UEFI+GPT，若是只能BIOS启动请前往modules/boot/grub.nix中手动将"nodev"修改为你的磁盘，例如"/dev/sda"
- Tips:如果你是UEFI启动可选择Systemd-boot，启动速度更快，但是不支持主题
- 2.格式化分区并挂载(这部分内容不多叙述)
- 3.使用"nixos-generate-config --root /mnt"获取配置文件，配置文件存储在"/你挂载的目录/etc/nixos/"下
- 4.使用cp命令替换除了"hardware-configuration.nix"外的所有文件
- 5.执行"nixos-install"开始安装！(若下载速度过慢可添加--option substituters "镜像地址+原地址")
- 6.设置完root密码后输入"reboot"重启进入系统(❁´◡`❁)
- 7.使用默认用户名:reimilia + 临时密码:123456 登录，进入桌面第一时间打开终端输入"passwd"更改账户密码防止临时密码失效

咲夜提醒您：经作者测试，可以使用以下命令加快NixOS在国内的下载速度
nixos-install --option substituters "https://mirrors.ustc.edu.cn/nix-channels/store https://cache.nixos.org"

# Ver1.1新增内容:
- 新增了很多很多种桌面环境(除去原来的GNOME和KDE，还新增了XFCE，LXQT，Hyprland，COSMIC)
- 引导可选择Systemd-boot了，但是默认仍然是GRUB
- 输入法新增一个可选择的Fcitx5，默认依旧是IBus(KDE用户推荐选Fcitx5呢)
- 新增多个可选择镜像源，若发现速度奇慢，排除你的网络的问题后，更换镜像源

# Ver1.2更新内容
- 1.添加了flake,使用"nixos-install/nixos-rebuild swicth --flake github:UpwindTrail617/NixOS_Config#reimilia"命令通过flake安装/更新
- 提示：如果你想自定义使用别的模块还是请你git到本地修改后使用(*/ω＼*)

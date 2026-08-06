# Reimilia NixOS Configuration

- ⚠重要提示：不要同时启用多个同类型的功能模块，会引起冲突！
- 提示：没啥可更新的了，直接变LTS长期(不)维护了 (o′┏▽┓｀o) 

# 特性~(￣▽￣)~*
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

# Ver1.3更新内容
- 1.添加了东方GRUB主题，修复了Very多的Bug

# Ver1.4更新内容
- 1.添加了5个可选的系统优化插件┏ (゜ω゜)=👉
  - 自动更新 (每天凌晨3:00)
  - 自动清理垃圾 (每天凌晨3:15)
  - ZRAM内存压缩
  - Nix Flakes 实验性功能开启
  - 无需密码自动登录 (默认关闭)
- 2.默认桌面改为Xfce

# Ver2.0_LTS更新内容(LTS版以后随缘更新了)
- 1. 新增了Home-Manager(真是个史诗级的更新啊)
  - 目前添加了什么模块？
  - ZSH + Oh My ZSH + Powerlevel10K
  - 快捷别名:
      - 1. sys-update (手动更新系统)
      - 2. clean (手动清理垃圾)
      - 3. ff (fastfetch，随时随地，fetch一下)
      - 4. ll (ls -al)
      - 5. la (ls -la)  
  - 开机名言彩蛋
- 2. 修复了N个Bug，新增了N个Bug ┗|｀O′|┛ 嗷~~
- 3. GNOME桌面添加默认壁纸，是魂魄妖梦诶(≧∇≦)ﾉ
  - 通过手动修改配置文件还能做到默认使用别的壁纸
  - 目前就GNOME桌面是能成功修改默认壁纸的，别的都会炸o(≧口≦)o
- 4. 移除了Herobrine
- 5. 操操操！原来之前我一直没加上浏览器，我真是个傻逼ヽ（≧□≦）ノ
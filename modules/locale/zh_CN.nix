{ config, pkgs, ... }:

{
  # 中文语言环境
  i18n.defaultLocale = "zh_CN.UTF-8";

  # 额外语言支持
  i18n.supportedLocales = [
    "en_US.UTF-8/UTF-8"
    "zh_CN.UTF-8/UTF-8"
  ];

  # 键盘布局
  console.keyMap = "us";

  # X11中文键盘
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # 中文字体
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
  ];
}
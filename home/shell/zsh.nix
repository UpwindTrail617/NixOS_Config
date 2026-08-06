{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
    };

    powerlevel10k = {
      enable = true;
    };

    initExtra = ''
      # 开机名言
      if command -v fortune > /dev/null; then
        echo
        fortune
         echo
      fi

    # 加载P10K配置文件,使用OhMyZSH
    [ -f ~/.p10k.zsh ] && source ~/.p10k.zsh

    '';
  };

  home.packages = with pkgs; [
    fortune
    cowsay
    zsh-powerlevel10k
    meslo-lgs-nf
  ];
}
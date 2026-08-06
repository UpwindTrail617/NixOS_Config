{
  description = "Reimilia NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }: {

    nixosConfigurations = {

      reimilia = nixpkgs.lib.nixosSystem {

          system = "x86_64-linux";

          modules = [
            ./configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.reimilia = import ./home/home-manager.nix;
            }
          ];
        };
    };
  };
}


#空に踊る緋色月 鮮やかに揺らめいた
#空中跳动着的绯色之月 鲜艳地摇曳着

#瞳を刺すその色が 私を狂わせ…
#刺痛瞳孔的色彩 让我变得疯狂起来…

#デストロオオオオオオオオイ!!!!!!!!
#DESTROOOOOOOOY！！！！！！！！

#マスパした！！！
#MASTER SPARK！！！

#私のニューロサーキットがマスタースパークした！！
#我的神经回路发射出MASTER SPARK了！！

#そしていま全て理解した！
#于是我完全明白了！

#理解していないことを理解した！
#不明白的也变得明白了！

#そんな私のツバサのコスモから ラーメンライスがほとばしる
#从我的双翼的小宇宙 还有拉面和米饭里喷薄出来了

#あー！これはもう、ようするに
#啊~！这就是、就是说

#ようするに、なんていうか、なんなんだああああああああ！！！
#就是说、怎么说呢、究竟是什么啊啊啊啊啊啊啊啊！！！

#フゥーハハァ！よくきたな魔理沙と霊梦このやろう！！
#呜啊！魔理沙灵梦你们两个混蛋来的正好！！

#なんかのキノコと100円やるからカエレこのやろう！！
#给你们不知道哪儿来的蘑菇和100円回去吧！！

#あ、帰った！安い！安いぞ主人公！！！
#啊、走了！好廉价啊！廉价的主人公啊！

#よっしゃー！とりあえず暇だから適当にうたうぞおお！！
#耶~！总之很闲 那么就来唱唱歌吧！！
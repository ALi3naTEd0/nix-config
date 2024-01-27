{
  lib,
  pkgs,
  ...
}: {
  services.xserver.layout = lib.mkForce "us";

  environment.systemPackages = with pkgs; [
    neovim
    alejandra
  ];

  console.keyMap = lib.mkForce "us";

  i18n.defaultLocale = lib.mkForce "en_SG.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_SG.UTF-8";
    LC_IDENTIFICATION = "en_SG.UTF-8";
    LC_MEASUREMENT = "en_SG.UTF-8";
    LC_MONETARY = "en_SG.UTF-8";
    LC_NAME = "en_SG.UTF-8";
    LC_NUMERIC = "en_SG.UTF-8";
    LC_PAPER = "en_SG.UTF-8";
    LC_TELEPHONE = "en_SG.UTF-8";
    LC_TIME = "en_SG.UTF-8";
  };
}

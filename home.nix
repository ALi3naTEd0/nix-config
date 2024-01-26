{lib, ...}: {
  home.packages = [];
  programs.bash.enable = true;

  home.file.".config" = {
    source = ./hyprdots;
    recursive = true;
  };

  xdg.configFile."hypr/hyprland.conf" = {
    source = ./hyprdots/hypr/hyprland.conf;
    force = lib.mkForce true;
  };

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "23.11";
}

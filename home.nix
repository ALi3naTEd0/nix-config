{...}: {
  home.packages = [];
  programs.bash.enable = true;

  home.file.".config" = {
    source = ./hyprdots;
    recursive = true;
  };

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "23.11";
}

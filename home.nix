
{ inputs, lib, config, pkgs, ... }: {


  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "llama";
  home.homeDirectory = "/home/llama";
  programs.git = {
    enable = true;
    userName  = "webbb82";
    userEmail = "webbb82@gmail.com";
  };
 nixpkgs = {
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
    };
  };


  home.packages = with pkgs; [ steam obsidian krusader dolphin sof-firmware zellij
    zip unar plasma-desktop helix neofetch alacritty vscodium discord chromium lapce
    archiver variety zsh-nix-shell espanso thunderbird rofi wezterm sxhkd ];

 # Enable home-manager and git
   home-manager.users.llama = {
  home.stateVersion = "22.11"; # Please read the comment before changing.
  home.file = {
   };
  home.sessionVariables = {
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

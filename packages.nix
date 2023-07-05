{ pkgs, config, ... }:{
  home.packages = with pkgs; [
    # GUI Application
    brave     # Browser
    kitty     # Terminal
    vscodium  # Editor

    # CLI Application
    curl      # Downloaded
    alsaUtils # Volume Management
    git       # Version control system
    xclip     # Copy to clipboard
    fzf       # Fazzy finder
    clipmenu  # Clipboard

    # Replace coreutils tools
    patool    # Portable archive file manager
    zoxide    # A smarter cd command
    bat       # A cat clone with wings
    trash-cli # rm put trash-bin
    bottom    # System monitor & top replacement
  ];


  # Text Editor - NeoVim
  # programs.neovim = {
  #   enable = true;
  #   plugins = with pkgs.vimPlugins; [ packer-nvim ];
  # };

  # Shell - Fish
  programs.fish = {
    enable = true;
    shellInit = ''
source ${config.home.sessionVariables.DOTFILES}/shell/config.fish
    '';
    plugins = [
      {
        name = "fundle";
        src = pkgs.fetchFromGitHub {
          owner = "danhper";
          repo = "fundle";
          rev = "f4b39217e135fd209bd4e055eca8d32decdd91e0";
          sha256 = "0d75h5351r5rbznzckk1vbk3g2kqqdc01i07pxrgmfd2yd6w9063";
        };
      }
    ];
  };

  # Yellow light - redshift
  services.redshift = {
    enable = true;
    dawnTime = "6:00-7:45";
    duskTime = "18:35-20:15";
    provider = "geoclue2";
  };

  # Not found command
  programs.command-not-found.enable = true;

  # XDG Base Directory Specification
  # More here -> https://wiki.archlinux.org/title/XDG_Base_Directory
  xdg = {
    enable = true;
  };
}

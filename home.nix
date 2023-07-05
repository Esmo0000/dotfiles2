{ pkgs, ...}:
let
  USER = "ramen";
in
{
  users = {
    users = {
      # You can change the 'ramen' to your username of choice
      ${USER} = {
        isNormalUser = true;
        extraGroups = [ "wheel" "video" "audio" ]; # Root user
      };

      # Disable root password
      root.hashedPassword = "!";
    };

    # Default shell
    defaultUserShell = pkgs.fish;
  };

  /* imports = ./packages.nix; */
  home-manager.users.${USER} = { pkgs, config, ... }: {
    imports = [
      ./packages.nix
      ./theme.nix
    ];

    home = {
      sessionVariables = { DOTFILES = "${config.xdg.configHome}/dotfiles"; };

      # Link files
      activation.linkMyFiles = config.lib.dag.entryAfter ["writeBoundary"] ''
        ln -sf ${toString ../git.init} ${config.xdg.configHome}/git/config
      '';
    };

    programs = {
      home-manager.enable = true;
    };

    services = {
      # XSuspender configurably suspends application activity to save battery.
      xsuspender = {
        enable = true;
        defaults.onlyOnBattery = true;
        defaults.autoSuspendOnBattery = true;
      };

      # Using Bluetooth headset buttons to control media player
      mpris-proxy.enable = true;
    };
    xresources.path = "${config.xdg.configHome}/X11/Xresources";
  };
}

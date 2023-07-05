# Operating Systems - NixOS
{ pkgs, config, ... }:
{
  # Boot Mode - UEFI mode
  boot.loader.efi.canTouchEfiVariables = true;

  # Boot Loader - systemd-boot
  boot.loader.systemd-boot.enable = true;

  # init system - systemd

  # Package Manger - Nix
  nix = {
    # Config file location
    nixPath = [
      "nixos-config=${config.home-manager.users.ramen.home.sessionVariables.DOTFILES}/nix/configuration.nix"
      "nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos"
      "/nix/var/nix/profiles/per-user/root/channels"
    ];

    # Automatic garbage collection
    gc.automatic = true;
    gc.options = "--delete-older-than 30d";
  };

  # Display Server - X Window System
  services.xserver = {
    enable = true;

    # Laptop Touchpad Support
    libinput = {
      enable = true;
      touchpad.disableWhileTyping = true;
    };
  };


  # Window Manger - Qtile
  services.xserver.windowManager.qtile.enable = true;

  # Display Manager - startX
  services.xserver.displayManager.startx.enable = true;

  # Brightness Manager - acpilight
  hardware.acpilight.enable = true;

  # Sound Server - PipeWire
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };

  # Network Interfaces - NetworkManager
  networking.networkmanager = {
    enable = true;
    dns = "none";
    wifi = {
      # Randomize the Mac Address for security purpose.
      macAddress = "random";
      powersave = true;
    };
  };

  # DNS
  networking.nameservers = [ "1.1.1.3" "1.0.0.3" ];

  # Bluetooth Manager - Blueman
  services.blueman.enable = true;

  # Privileged Access Manager - SSH
  programs.ssh.startAgent =true;

  # Settings Management
  programs.dconf.enable = true;
}

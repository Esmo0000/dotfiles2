# To know more about how to setup nix goto --> https://nixos.org/manual/nixos
# Find the options that you can use --> https://search.nixos.org/options
# Find the packages that you can install --> https://search.nixos.org/packages

{ pkgs, config, ... }:{
  imports =
    [
      # Include the results of hardware scans.
      /etc/nixos/hardware-configuration.nix

      # Home Manager
      "${ builtins.fetchTarball https://github.com/nix-community/home-manager/archive/release-22.05.tar.gz }/nixos"
      ./home.nix
      ./fonts.nix
      ./system.nix
    ];

  environment.variables = rec {
    DOTFILES = config.home-manager.users.ramen.home.sessionVariables.DOTFILES;
  };

  # EFI boot loader
  boot = {
    # Switch to latest linux kernel
    kernelPackages = pkgs.linuxPackages_latest;

    # Plymouth font
    plymouth.font = "${pkgs.ubuntu}/share/fonts/truetype/Ubuntu.ttf";
  };

  # Timezone
  time.timeZone = "Asia/Kolkata";

  networking = {
    useDHCP = false;

    # Internet Support
    interfaces = {
      eno1.useDHCP = true; # Ethernet
      wlo1.useDHCP = true; # Wifi
    };

    hostName = "goroot"; # Device Hostname
    # wireless.enable = true;  # wpa_supplicant

    # Proxys
    # proxy.default = "http://user:password@proxy:port/";
    # proxy.noProxy = "127.0.0.1,localhost,internal.domain";

    # Firewall
    # firewall.enable = false;
    # firewall.allowedTCPPorts = [ ... ];
    # firewall.allowedUDPPorts = [ ... ];
  };

  services = {
    # Printing support
    # printing.enable = true;

    # openssh.enable = true;

    # Do we ignore the lid state Some laptops are broken.
    # upower.ignoreLid = false;

    # Specifies what to be done when the laptop lid is closed.
    logind.lidSwitch = "suspend";
  };

  hardware = {
    # Bluetooth
    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };

   };

  sound = {
    enable = true;
    mediaKeys.enable = true;
  };

  # System Updates
  system = {
    # The version that system usages
    stateVersion = "unstable";

    # Enable auto update for security purpose
    autoUpgrade = {
      enable = true;
      allowReboot = false; # Auto Reboot after update
      # Switch to Unstable channel
      channel = "https://nixos.org/channels/nixos-unstable";
      dates = "weekly";
    };
  };


  # Audio server uses this to acquire real-time priority
  security.rtkit.enable = true;

  # Whether to enable power management. This includes support for suspend-to-RAM
  # and powersave features on laptops.
  powerManagement.enable = true;

  # Internationalisation properties
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    /* font = "JetBrains Mono"; */
    keyMap = "us";
  };

  # Whether to install files to support the XDG Autostart specification.
  xdg = {
    autostart.enable = true;
  };
}

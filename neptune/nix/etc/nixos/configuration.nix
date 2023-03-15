# Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [
      ./packages
      /etc/nixos/hardware-configuration.nix
    ];

  # Boot
  boot = {
    # Use the systemd-boot EFI boot loader.
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    # Kernel
    kernelPackages = pkgs.linuxPackages_zen;
  };

  networking.hostName = "neptune"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Warsaw";

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp0s31f6.useDHCP = true;
  networking.interfaces.wlp4s0.useDHCP = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "colemak/colemak";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Graphics

  # Intel Graphics drivers ("intel" does not support modern features and
  # has not been updated since 2015, thus "modesetting" is recommended)

  services.xserver.videoDrivers = [ "modesetting" ];

  # OpenGL support for 32 bit programs such as in Wine
  hardware.opengl.driSupport32Bit = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  # Enable the xmonad Window Manager
  #services.xserver.windowManager.xmonad = {
  #  enable = true;
  #  enableContribAndExtras = true;
  #};
  # Enable the Sway Window Manager
  programs.sway.enable = true;
  # Enable the Pantheon Desktop Environment.
  #services.xserver.desktopManager.pantheon.enable = true;

  # Enable keyboard shortcut daemon
  programs.light.enable = true; # Needed for the /run/wrappers/bin/light SUID wrapper.
  services.actkbd = {
    enable = true;
    bindings = [
      { keys = [ 224 ]; events = [ "key" ]; command = "/run/wrappers/bin/light -A 10"; }
      { keys = [ 225 ]; events = [ "key" ]; command = "/run/wrappers/bin/light -U 10"; }
    ];
  };
  sound.mediaKeys.enable = true;

  # Enable screen sharing for wlroots-based compositors
  xdg.portal.wlr.enable = true;

  # Configure keymap in X11
  services.xserver.layout = "pl,pl";
  services.xserver.xkbVariant = "colemak,";
  services.xserver.xkbOptions = "caps:backspace";

  # Printering
  # Enable CUPS to print documents.
  services.printing.enable = true;

  services.avahi.enable = true;
  # for a WiFi printer
  services.avahi.openFirewall = true;
  # for an USB printer
  services.ipp-usb.enable = true;

  services.printing.drivers = [ pkgs.hplipWithPlugin ];

  # Scannering
  hardware.sane.enable = true;
  hardware.sane.extraBackends = [ pkgs.hplipWithPlugin ];

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  services.pipewire.enable = true;

  # Enable bluetooth.
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput = {
    enable = true;
    touchpad = {
      naturalScrolling = true;
      tapping = true;
      tappingDragLock = false;
      middleEmulation = true;
      accelSpeed = "0.5";
    };
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users = {
    mble = {
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "networkmanager"
        "scanner"
        "lp"
        "libvirtd"
        "docker"
        "plugdev"
      ];
    };
  };

  # Groups
  users.groups = {
    mlocate = { };
  };

  # mlocate
  security.wrappers = {
    locate = {
      group = "mlocate";
      owner = "root";
      permissions = "u+rx,g+x,o+x";
      setgid = true;
      setuid = false;
      source = "${pkgs.mlocate}/bin/locate";
    };
  };

  # Shell
  programs.fish.enable = true;
  users.extraUsers.mble = {
    shell = pkgs.fish;
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Open ports in the firewall.
  networking.firewall.allowedTCPPortRanges = [{ from = 1714; to = 1764; }];
  networking.firewall.allowedUDPPortRanges = [{ from = 1714; to = 1764; }];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Virtualisation
  virtualisation.libvirtd.enable = true;
  virtualisation.docker.enable = true;
  virtualisation.docker.storageDriver = "btrfs";
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };
  programs.dconf.enable = true;

  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };

  # U2F configuration (YubiKey)
  # https://nixos.wiki/wiki/Yubikey
  security.pam.services = {
    login.u2fAuth = true;
    sudo.u2fAuth = true;
  };
  security.pam.yubico = {
    enable = true;
    debug = false;
    mode = "challenge-response";
  };
  security.pam.yubico.control = "required";
  services.pcscd.enable = true;

  # Enable cron service
  services.cron = {
    enable = true;
    systemCronJobs = [
      "@hourly mble cd /home/mble/Code/repos/pluget/todo/ && git pull && git add . && git commit --no-gpg-sign -m 'Regular update' && git push"
      "@daily mble pnpm add -g pnpm"
      "@daily root nix-channel --update && nixos-rebuild switch --upgrade && nix-collect-garbage -d"
      "@daily mble cd /home/mble/.dotfiles/ && git pull && git add . && git commit --no-gpg-sign -m 'Regular update' && git push"
    ];
  };

  # Nvidia drivers
  # NVIDIA drivers are unfree.
  nixpkgs.config.allowUnfree = true;

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.opengl.enable = true;

  # Optionally, you may need to select the appropriate driver version for your specific GPU.
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;

  # nvidia-drm.modeset=1 is required for some wayland compositors, e.g. sway
  hardware.nvidia.modesetting.enable = true;

  # System
  system = {
    # This value determines the NixOS release from which the default
    # settings for stateful data, like file locations and database versions
    # on your system were taken. 
    stateVersion = "23.05";

    # Automatic Upgrades
    autoUpgrade = {
      enable = true;
      allowReboot = false;
      channel = https://nixos.org/channels/nixos-unstable;
    };
  };
}


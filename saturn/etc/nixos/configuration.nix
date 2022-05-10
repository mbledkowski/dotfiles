# Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [       
      ./packages
      <nixos-hardware/lenovo/thinkpad/t460>
      ./hardware-configuration.nix
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

  networking.hostName = "saturn"; # Define your hostname.
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
  services.xserver.useGlamor = true;

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
  #programs.sway.enable = true;

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
  services.xserver.layout = "us,us,pl";
  services.xserver.xkbVariant = "colemak,workman,";
  services.xserver.xkbOptions = "caps:backspace";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

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
      ]; # Enable ‘sudo’ for the user.
    };
    emi = {
      isNormalUser = true;
      extraGroups = [ "networkmanager" ];
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
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # System
  system = {
    # This value determines the NixOS release from which the default
    # settings for stateful data, like file locations and database versions
    # on your system were taken. 
    stateVersion = "22.05";
 
    # Automatic Upgrades
    autoUpgrade = {
      enable = true;
      allowReboot = false;
      channel = https://nixos.org/channels/nixos-unstable;
    };
  };
}

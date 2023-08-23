{ pkgs, ... }:
let
  iriun = (import ../pkgs/apps/iriun.nix);
in {

  nixpkgs.config.permittedInsecurePackages = [
    "tightvnc-1.3.10"
    "electron-12.2.3"
    "electron-21.4.0"
    "openssl-1.1.1t"
    "openssl-1.1.1u"
    "openssl-1.1.1v"
    "python-2.7.18.6"
  ];

  environment.systemPackages = with pkgs; [
    file
    mpv
    woeusb-ng
    calc
    dig
    htop
    gotop
    exa
    bat
    git
    git-lfs
    wget
    wget2
    stow
    xclip
    wl-clipboard
    wofi
    neofetch
    uwufetch
    screenfetch
    pfetch
    dash
    fish
    any-nix-shell
    tmux
    powerline
    powerline-fonts
    gcc
    ntfs3g
    #dmenu
    #rofi
    zathura
    unzip
    alacritty
    #wev
    waybar
    networkmanagerapplet
    gibo
    gh
    rclone
    pavucontrol
    blueman
    redshift
    gnumake
    flameshot
    copyq
    btop
    playerctl
    brightnessctl
    cron
    skanlite
    # gscan2pdf
    # paperworkRedditgraphs
    scantailor
    appimage-run
    jq
    tree
    virt-manager
    # linuxKernel.packages.linux_zen.vmware
    # vmware-workstation
    tightvnc
    # licensor
    distrobox
    docker
    popcorntime
    barrier
    # moonlight-qt
    pam_u2f
    pcsclite
    yubico-pam
    yubikey-manager
    yubikey-manager-qt
    yubikey-personalization
    # yubioath-flutter
    minicom
    pwntools
    # busybox
    usbutils
    sysvinit
    mlocate
    cmatrix
    etcher
    ventoy-full
    poppler_utils
    fd
    ripgrep
    # radicle-cli
    ethtool
    kbfs
    keybase
    keybase-gui
    ffmpeg
    openrazer-daemon
    razergenie
    fzf
    speechd
    soft-serve
    wakeonlan
    lolcat
    monero-gui
    nmap
    metasploit
    youtube-dl
    lazygit
    service-wrapper
    helvum
    github-desktop
    ldacbt
    eyedropper
    shell_gpt
    freshfetch
    hyfetch
    pridefetch
    ipfetch
    tailscale
    diffuse
    busybox
    android-tools
    tigervnc
    termius
    ansible
    dmg2img
    qemu
    darling
    discord
    linuxKernel.packages.linux_zen.v4l2loopback
    moonlight-qt
    cadence
    icecast
    ffmpeg_6-full
    screenkey
    texlive.combined.scheme-full
    bibtool
    bibclean
    texlab
    p7zip
    rar
    unrar
    gnome-network-displays
    iriun
    rpiplay
    lm_sensors
    hardinfo
    glances
  ];
}

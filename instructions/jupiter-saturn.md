# jupiter's / saturn's setup instructions

## Creating bootable drive

Go to archlinux.org > Download > BitTorrent Download.
Download iso using BitTorrent client (like qBittorrent).
Flash iso on to USB drive.
Install Arch Linux on drive using `archinstall`.

## On machine

  1. In terminal type in `su` and enter root password.
  2. Update entire system and install GitHub CLI, git, stow, vi editor, and fish shell with `sudo pacman -Syyu github-cli git stow vi fish --noconfirm`
  3. Type `visudo` and uncomment `%wheel ALL=(ALL:ALL) ALL`
  4. Exit from root session using `exit`
  5. Login to GitHub using `gh auth login`
  6. Clone dotfiles into `~/.dotfiles` `gh repo clone dotfiles ~/.dotfiles`
  7. `cd` into `~/.dotfiles` and run `git submodule update --init --recursive`
  8. `cd` into `~/.dotfiles/jupiter` or `~/.dotfiles/saturn` directory and run `sudo stow . -t /`
  9. Change default shell for mble to fish using `chsh mble -s $(which fish)`

## Install packages

### Pacman

```sh
sudo pacman -Syyu --noconfirm base-devel yarn fisher noto-fonts gimp cups whois mpv celluloid barrier gimp firefox chromium epiphany tor proxychains-ng neofetch screenfetch exa tree curl wget transmission-cli ueberzug highlight ffmpegthumbnailer elinks ranger plocate coreutils sharutils cpio lzip lzop man-pages man-db dconf dconf-editor dash tmux python python-pip nodejs npm deno hugo wireshark-qt wireshark-cli termshark qbittorrent youtube-dl wl-clipboard marker gedit bluez bluez-utils gnome-firmware foot alacritty redshift spotifyd zathura ntfs-3g powerline powerline-fonts ttf-jetbrains-mono rofi blueman copyq flameshot pavucontrol brightnessctl i3lock xclip usbutils xorg-xinput bind

sudo systemctl enable bluetooth.service
sudo systemctl enable cups.service
sudo systemctl enable tor.service

sudo updatedb

powerline-config tmux setup
```

### Paru
#### Installation

```sh
mkdir ~/.build
git clone https://aur.archlinux.org/paru.git ~/.build/paru
cd ~/.build/paru
makepkg -si
```

#### Packages

```sh
paru -Syyu --noconfirm gibo licensor-git nvm rate-mirrors-bin obs-hevc-vaapi-git ttf-liberation googler ddgr visual-studio-code-bin adwaita-dark clipman neovim-git neovide polymc-bin systemd-cron sublime-text-4 peazip-gtk2-bin atool spotifyd spot-client ttf-ms-fonts nerd-fonts-complete chrome-gnome-shell nerd-fonts-complete vscode-codicons-git
```

#### Enable services

```sh
systemctl --user --now enable spotifyd.service
```

### Pip

```sh
pip install --user wheel browser_cookie3 pip-review neovim

pip-review --local --auto
```

### Change default webbrowser
```sh
xdg-settings set default-web-browser firefox.desktop
```

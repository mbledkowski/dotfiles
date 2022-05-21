# saturn's setup instructions

## Creating bootable drive

Go to Manjaro.org > Try Manjaro > Editions > Community > [Sway](https://manjaro.org/download/#sway).
Click "Get Sway", and download Manjaro Unstable zip and z01.
Merge archives (`zip -F manjaro.zip --out unsplit.zip`) and unzip them.
Flash iso on to USB drive.

## On machine

  1. Update entire system and install GitHub CLI, stow, and fish shell with `sudo pacman -Syyu github-cli stow fish`
  2. Login to GitHub using `gh auth login`
  3. Clone dotfiles into ~/.dotfiles `gh repo clone dotfiles .dotfiles`
  4. Remove existing sway and waybar folders in `.config` using `rm -r ~/.config/sway ~/.config/waybar`
  5. `cd` into `.dotfiles/saturn` directory and run `sudo stow . -t /`
  6. Change default shell for mble to fish using `chsh mble -s $(which fish)`

## Install packages

### Pacman

```sh
sudo pacman -Syyu --noconfirm yarn fisher ttf-ms-fonts noto-fonts stow gimp cups whois mpv celluloid barrier gimp firefox chromium epiphany tor proxychains-ng neofetch screenfetch exa tree curl wget transmission-cli ueberzug highlight ffmpegthumbnailer elinks ranger plocate coreutils sharutils cpio lzip lzop man-pages man-db dconf dconf-editor dash fish tmux powerline python python-pip nodejs deno hugo wireshark-qt wireshark-cli termshark qbittorrent youtube-dl sway swaylock swayidle rofi wofi foot alacritty wl-clipboard marker neovim code gedit bluez bluez-utils gnome-firmware foot alacritty redshift spotifyd zathura ntfs-3g plocate

sudo systemctl enable bluetooth.service
sudo systemctl enable cups.service
sudo systemctl enable tor.service

sudo updatedb
```

### Paru
#### Installation

```sh
yay -S paru-bin
```

#### Packages

```sh
paru -Syyu --noconfirm gibo licensor-git nvm rate-mirrors-bin obs-hevc-vaapi-git ttf-liberation googler ddgr code-marketplace adwaita-dark megasync-bin nautilus-megasync clipman neovide polymc-bin systemd-cron sublime-text-4 peazip-gtk2-bin atool spotifyd spot-client
```

#### Enable services

```sh
systemctl --user start spotifyd.service
systemctl --user enable spotifyd.service
```

### Pip

```sh
pip install --user wheel browser_cookie3 pip-review neovim

pip-review --local --auto
```

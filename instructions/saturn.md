# saturn's setup instructions

## Creating bootable drive

Go to Manjaro.org > Try Manjaro > Editions > Community > [Sway](https://manjaro.org/download/#sway)
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


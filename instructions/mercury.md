# mercury's setup instructions

## Creating bootable drive

Create bootable SD card using rpi-imager.

  1. Choose Raspberry Pi OS Lite (32-bit) as operating system
  2. Set hostname to `mercury`
  3. Enable SSH
  4. Set username as `mble`
  5. Set locale settings to Europe/Warsaw, pl
  6. Disable telemetry

## On machine

SSH into machine (`ssh mble@192.168.1.12`) and run:

  1. Install shell, code editor, stow (for dotfiles), exa (`ls` alternative), git - `sudo apt install fish neovim stow exa git`
  2. Change shell for `mble` user `sudo chsh mble -s $(which fish)`
  3. Clone dotfiles and initialize them
     ```sh 
     git clone https://github.com/mbledkowski/dotfiles /home/mble/.dotfiles
     cd /home/mble/.dotfiles/mercury
     stow . -t /
     ```
  4. Install and configure pi-hole
     1. `curl -sSL https://install.pi-hole.net | bash`
     2. Go to Settings > [Teleporter](http://192.168.1.12/admin/settings.php?tab=teleporter) > Restore and upload [dump file](https://github.com/mbledkowski/dotfiles/tree/main/dumps/mercury)

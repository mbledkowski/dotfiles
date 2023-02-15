# [@mbledkowski](https://github.com/mbledkowski)'s dotfiles

## How to make it work?

1. Choose your machine (jupiter / saturn / neptune) and `cd` into its directory.
2. Enter `stow . -t /`

## spotifyd

Read [spotifyd README.md](./global/home/mble/.config/spotifyd/README.md)

## NixOS

Before installation, run these lines:

```sh
sudo nix-channel --add https://github.com/NixOS/nixos-hardware/archive/master.tar.gz nixos-hardware
sudo nix-channel --update
```

## Windows 10/11
### Installation of Win11 on unsupported hardware
 - https://pureinfotech.com/install-windows-11-unsupported-pc/
### Colemak
 - Download: https://app.box.com/s/1cn9rfy6ywy0rbzqoj1ws5vjpf8lwasx
 - Run "setup.exe"
### Removal of unnecessary features
 - Run PowerShell with admin privilages
 - Enable PowerShell execution `Set-ExecutionPolicy Unrestricted -Force`
 - Download: https://github.com/Sycnex/Windows10Debloater
 - Run "Windows10DebloaterGUI.ps1"
 - Follow this tutorial: https://beebom.com/how-debloat-windows-11-improve-performance/
 - You might also use this resource: https://pureinfotech.com/debloat-windows-11/
### Config
#### Keyboard
 - Keyboard Properties
 - Repeat delay: Short
 - Repeat rate: Fast
#### Mouse
 - Mouse
 - Additional mouse settings
 - Pointer Options
 - Pointer speed: 6/11 (one below default)
 - Uncheck "Enhance pointer precision" (Mouse acceleration)
### Software
 - `winget install 9NZVDKPMR9RD` (Firefox)
 - `winget install XP89DCGQ3K6VLD` (PowerToys)

## Machines
 - sun - TP-Link Archer MR400
 - mercury - Raspberry Pi Zero W v1.1, 256 GB SD Card
 - phobos (moon of mars) - Radxa Zero, 128 GB SD Card
 - deimos (moon of mars) - Odroid C2 Rev0.2, 128 SD Card
 - venus - Samsung A40, 64GB internal memory
 - earth - Kindle Paperwhite 5, 8GB internal memory, no ads
 - mars - iPad Air 2019, 64GB internal memory
 - jupiter - Thinkpad X260, i5-6300U, 16GB DDR4
 - saturn - Thinkpad T460, i5-6300U, 16GB DDR3
 - uranus - Matebook D14 Ryzen 5 2500U, 8GB DDR4 
 - neptune - Ryzen 9 5900X, 32GB DDR4, RTX 2070 8GB

### VPS'es
 - halley - 1 VCPU ARM, 6GB RAM, Oracle Cloud
 - halley2 - 2 VCPU ARM, 12GB RAM, Oracle Cloud
 - halley3 - 1 VCPU ARM, 6GB RAM, Oracle Cloud

## License
[WTFPL](https://spdx.org/licenses/WTFPL)

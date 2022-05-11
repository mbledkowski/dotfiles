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

## Machines
 - solar - Huawei E5373 (modem)
 - mercury - Raspberry Pi Zero W v1.1, 256 GB SD Card
 - venus - Samsung A40, 64GB internal memory
 - earth - Kindle Paperwhite 5, 8GB internal memory, no ads
 - mars - iPad Air 2019, 64GB internal memory
 - jupiter - Thinkpad X260, 16GB DDR4
 - saturn - Thinkpad T460, 16GB DDR3
 - uranus - Matebook D14 Ryzen 5 2500U, 8GB DDR4 
 - neptune - i3 6100U, 8GB DDR4

## License
[WTFPL](https://spdx.org/licenses/WTFPL)

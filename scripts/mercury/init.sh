# Create new user - mble

sudo useradd mble -m
sudo usermod mble -aG users
sudo usermod mble -aG sudo
# Create new password for mble
sudo passwd mble

# Install packages

sudo apt install fish neovim stow exa

# Change shell to fish for mble

sudo chsh mble -s $(which fish)

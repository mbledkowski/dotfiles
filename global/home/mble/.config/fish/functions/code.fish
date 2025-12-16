function code --description 'alias code code --enable-features=UseOzonePlatform --ozone-platform=wayland'
 set __GL_SYNC_TO_VBLANK 0
 set vblank_mode 0
 command code --enable-features=UseOzonePlatform --ozone-platform=wayland --disable-gpu-vsync $argv
end

#!/bin/bash

# Dependencies
sudo apt install -y gcc x11-xserver-utils libx11-dev libxft-dev libxinerama-dev libxinerama1 cmus numlockx man-db rofi pavucontrol gnome-calculator light maim pulsemixer pulseaudio-utils dash feh stow zsh git xsel xclip libxfixes-dev libxfixes3 x11proto-core-dev libx11-dev libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libx11-xcb-dev ninja-build meson asciidoc libjpeg-dev libgif-dev dunst libxrandr-dev libpcre3-dev  libxi-dev libxt-dev playerctl

# Install DWM
cd ~/
git clone https://github.com/jash-maester/dwm-jash &&
cd ~/dwm-jash && sudo make clean install

# Install DWMBLOCKS
cd ~/
git clone https://github.com/jash-maester/dwmblocks-jash &&
cd ~/dwmblocks-jash && sudo make clean install

# Install Dunst
sudo apt install dunst -y

# Install DMENU
cd ~/
git clone https://github.com/jash-maester/dmenu-jash &&
cd ~/dmenu-jash && sudo make clean install

# Install ST
cd ~/
git clone https://github.com/jash-maester/st-jash &&
cd ~/st-jash && sudo make clean install
mkdir -p ~/.fonts
cp fonts/* -r ~/.fonts/
#echo "bindkey '\e[3~' delete-char" >> ~/.zshrc

# Install Slock
cd ~/
git clone https://github.com/jash-maester/slock &&
cd ~/slock && sudo make clean install
sudo groupadd nobody

# Install Clipnotify
#sudo apt install -y xsel xclip libxfixes-dev libxfixes3 x11proto-core-dev libx11-dev
cd ~/
git clone https://github.com/cdown/clipnotify &&
cd ~/clipnotify && sudo make install

# Install Clipmenu
cd ~/
git clone https://github.com/cdown/clipmenu &&
cd ~/clipmenu && sudo make install

# Install Jonaburg's Fork of Picom
#sudo apt install -y libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libx11-xcb-dev ninja meson asciidoc
#cd ~/
#git clone https://github.com/jonaburg/picom/
#cd ~/picom && meson --buildtype=release . build && ninja -C build && sudo ninja -C build install

# FT-Labs Picom Fork
cd ~/
git clone https://github.com/FT-Labs/picom.git
cd ~/picom && meson --buildtype=release . build && ninja -C build && sudo ninja -C build install

# Install skippy-xd
#sudo apt install -y libjpeg-dev libgif-dev
cd ~/
git clone https://github.com/jash-maester/skippy-xd &&
cd ~/skippy-xd && sudo make clean install

# Install Xbanish
cd ~/
git clone https://github.com/jcs/xbanish
cd xbanish && sudo make install

# Stow-files
cd ~/
git clone https://github.com/jash-maester/stow-files
cd ~/stow-files
stow fonts
stow executables
stow dunst
stow flameshot
stow dir_colors
stow gtk-2.0
stow gtk-3.0
stow gtk-4.0
stow icons
stow picom
stow rofi
stow themes

# Optional
#stow x
#stow nvim
#stow zsh
#stow touchegg
#stow pandoc
#stow user-dirs

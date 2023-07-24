#!/bin/bash
command() {
  # Instalation packages
  sudo pacman -Sy
  sudo pacman -S i3
  sudo pacman -S lightdm-gtk-greeter
  sudo pacman -S rofi
  sudo pacman -S feh
  sudo pacman -S tk
  sudo pacman -S noto-fonts
  sudo pacman -S noto-fonts-emoji
  sudo pacman -S noto-fonts-cjk
  sudo pacman -S ttf-font-awesome
  sudo pacman -S firefox
  sudo pacman -S kitty
  sudo pacman -S polybar
  sudo systemctl enable lightdm
  
  # Installation PowerMenu
  git clone https://github.com/MarkAnthonyO/PowerMenu.git  

  # Installation Yay AUR Helper
  sudo pacman -S --needed base-devel
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ..

  # Configurations
  mkdir ~/bg/
  mkdir ~/.config/
  mkdir ~/.config/i3/
  mkdir ~/.config/polybar/

  cp -r i3/config ~/.config/i3/config
  cp -r polybar/config.ini  ~/.config/polybar/config.ini
  cp -r bg/bg.jpg ~/bg/bg.jpg

  cd PowerMenu/
  mkdir ~/.config/PowerMenu/
  cp -r config/ ~/.config/PowerMenu/
  cd ..
}

command

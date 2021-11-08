# My Arch linux & Qtile window manager

## Application
- Terminal: Kitty
- Shell: Zsh
- Text Editor: Neovim & VS Code
- File Manager: Thunar
- Browser: Brave
- Office: OnlyOffice
- Music Player: Spotify
- Image Viewer: Viewnior
- Video Viewer: Mpv
- Kdeconnect
- Postman
- ...

## Installation
<details><summary>Click here!</summary>

Install AUR Helper
```sh
sudo pacman -S git
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

Install somethings
```sh
sudo pacman -S thunar gvfs tumbler kitty neofetch feh lxappearance-gtk3 viewnior mpv fzf
sudo pacman -S pulseaudio-alsa pavucontrol playerctl brightnessctl
pulseaudio -D
sudo pacman -S openssh
ssh-keygen
```

Clone dotfiles
```sh
git clone git@github.com:lqtoan/dotfiles.git
mkdir ~/.dotfiles
mv ~/dotfiles/* ~/.dotfiles
rm -R ~/.config/qtile
mkdir ~/.config/qtile
ln -sf ~/.dotfiles/.config/qtile/config.py ~/.config/qtile/config.py
ln -sf ~/.dotfiles/.xprofile ~/.xprofile
rm -R ~/.config/kitty
ln -sf ~/.dotfiles/.config/kitty ~/.config/kitty
rm -R ~/.config/neofetch
ln -sf ~/.dotfiles/.config/neofetch ~/.config/neofetch
rm -R ~/.config/feh
ln -sf ~/.dotfiles/.config/feh ~/.config/feh
ln -sf ~/.dotfiles/.fonts ~/.fonts
fc-cache -fv
mkdir ~/{.themes,.icons}
ln -sf ~/.dotfiles/.themes/dark ~/.themes/dark
ln -sf ~/.dotfiles/.icons/dark ~/.icons/dark
```
Note: thêm vào /etc/zsh/zshenv trước
>export ZDOTDIR="$HOME/.config/zsh"
```sh
mkdir ~/.config/zsh
ln -sf ~/.dotfile/.config/zsh/.zshenv ~/.config/zsh/.zshenv
ln -sf ~/.dotfile/.config/zsh/.zrofile ~/.config/zsh/.zprofile
ln -sf ~/.dotfile/.config/zsh/.zshrc ~/.config/zsh/.zshrc
cd ~/.config/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
```

Neovim
```sh
```
  
Spotify
```sh
yay -S spotify
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
yay -S spicetify-cli
spicetify
ln -sf ~/.dotfiles/.config/spicetify/Themes/SpicetifyDefault ~/.config/spicetify/Themes/SpicetifyDefault
spicetify backup apply enable-devtool
spicetify config extensions fullAppDisplay.js
spicetify apply
```

</details>

## Gallery

![21-10-06-221134_screenshot](https://user-images.githubusercontent.com/89382043/136232380-6cc88839-b2d2-46c2-bae3-a54e8cec98fc.jpg)
![21-10-06-221155_screenshot](https://user-images.githubusercontent.com/89382043/136232396-daef2660-f4f1-4241-8bfc-545db8fa51d3.jpg)
![21-10-06-221149_screenshot](https://user-images.githubusercontent.com/89382043/136232405-87b3a133-7834-468e-835f-f79703ec781c.jpg)
![21-10-06-221200_screenshot](https://user-images.githubusercontent.com/89382043/136232416-46fa7231-dcf5-4ab4-b9fb-6dfc32f0e5e8.jpg)
![21-10-06-223450_screenshot](https://user-images.githubusercontent.com/89382043/136236249-50c9a4fb-e1b1-40b1-9761-9c608da6a3b3.jpg)

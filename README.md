# My Arch linux & Qtile window manager

## Applications
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

## Installations

Note: thêm mirror vào /etc/pacman.d/mirrorlist
       
>Server = http://mirror.bizflycloud.vn/archlinux/$repo/os/$arch<br>
### Install AUR Helper
```sh
sudo pacman -Syyy
sudo pacman -S git
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### Install somethings
```sh
yay -Syyy
yay -S brave-bin visual-studio-code-bin postman-bin ibus-bamboo-git
```

### ... and somethings
```sh
sudo pacman -S thunar gvfs tumbler kitty neofetch feh lxappearance-gtk3 \
viewnior mpv fzf neovim xcape xclip nodejs npm htop kdeconnect libreoffice-still \
simplescreenrecorder pacman-contrib ibus-pinyin zsh bat exa dunst ranger \
pulseaudio-alsa pavucontrol playerctl brightnessctl openssh python-pip \
pulseaudio -D
sudo pip install psutil
sudo pip install pillow
sudo pip install dbus-next
```
Note: thêm ssh-key vào Github
>ssh-keygen<br>
>cd ~/.ssh<br>
>cat id_rsa.pub<br>
>>copy và dán vào Github
       
### Clone dotfiles
```sh
git clone git@github.com:lqtoan/dotfiles.git
mv ~/dotfiles ~/.dotfiles
rm -R ~/.config/qtile
ln -sf ~/.dotfiles/.config/qtile ~/.config/qtile
ln -sf ~/.dotfiles/.xprofile ~/.xprofile
rm -R ~/.config/kitty
ln -sf ~/.dotfiles/.config/kitty ~/.config/kitty
rm -R ~/.config/neofetch
ln -sf ~/.dotfiles/.config/neofetch ~/.config/neofetch
rm -R ~/.config/dunst
ln -sf ~/.dotfiles/.config/dunst ~/.config/dunst
rm -R ~/.config/ranger
ln -sf ~/.dotfiles/.config/ranger ~/.config/ranger
ln -sf ~/.dotfiles/Pictures/Wallpapers ~/Pictures/Wallpapers
rm -R ~/.config/feh
ln -sf ~/.dotfiles/.config/feh ~/.config/feh
ln -sf ~/.dotfiles/.fonts ~/.fonts
fc-cache -fv
mkdir ~/.themes
mkdir ~/.icons
ln -sf ~/.dotfiles/.themes/dark ~/.themes/dark
ln -sf ~/.dotfiles/.icons/dark ~/.icons/dark
```
Note: dùng lxappearance để cài đặt font, theme, icon,...<br>
Note:
>chsh -s /bin/zsh<br>
>sudo systemctl restart sddm<br>
>sudo nvim /etc/zsh/zshenv<br>
>>export ZDOTDIR="$HOME/.config/zsh"
```sh
ln -sf ~/.dotfiles/.config/zsh ~/.config/zsh
```
Note: tắt terminal, mở lại
```sh
cd ~/.config/zsh/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Note: tắt terminal, mở lại
```sh
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
```       
       
### Neovim
```sh
sudo npm install -g neovim
sudo pip install pynvim
rm -R ~/.config/nvim
ln -sf ~/.dotfiles/.config/nvim ~/.config/nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
Note: cài các plugin
>nvim<br>
>:PlugInstall

### Develop
#### JavaScript
```sh
sudo npm install -g npm
sudo npm update -g npm
sudo npm install -g nodemon
sudo npm install -g sass
sudo npm install -g json-server
sudo npm install -g firebase-tools
```
#### Angular
```sh
sudo npm install -g @angular/cli@11.2.7
ng --version
```
#### PostgreSQL
```sh
sudo pacman -S postgresql
sudo systemctl enable postgresql
sudo systemctl start postgresql
postgres --version
```
       
### Spotify
```sh
yay -S spotify
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
yay -S spicetify-cli
spicetify
ln -sf ~/.dotfiles/.config/spicetify/Themes/SpicetifyDefault ~/.config/spicetify/Themes/SpicetifyDefault
rm -R ~/.config/spicetify/Extensions
ln -sf ~/.dotfiles/.config/spicetify/Extensions ~/.config/spicetify/Extensions
spicetify backup apply enable-devtool
spicetify config extensions fullAppDisplay.js
spicetify apply
```
Make pacman more fun
>sudo nvim /etc/pacman.conf
>>Color<br>
>>ILoveCandy

### Slack
```sh
#2E3440,#2C3849,#5E81AC,#D8DEE9,#3B4252,#D8DEE9,#A3BE8C,#8FBCBB,#2E3440,#D8DEE9
```

## Gallery

![21-10-06-221134_screenshot](https://user-images.githubusercontent.com/89382043/136232380-6cc88839-b2d2-46c2-bae3-a54e8cec98fc.jpg)<br>
![21-10-06-221155_screenshot](https://user-images.githubusercontent.com/89382043/136232396-daef2660-f4f1-4241-8bfc-545db8fa51d3.jpg)<br>
![21-10-06-221149_screenshot](https://user-images.githubusercontent.com/89382043/136232405-87b3a133-7834-468e-835f-f79703ec781c.jpg)<br>
![21-10-06-221200_screenshot](https://user-images.githubusercontent.com/89382043/136232416-46fa7231-dcf5-4ab4-b9fb-6dfc32f0e5e8.jpg)<br>
![21-10-06-223450_screenshot](https://user-images.githubusercontent.com/89382043/136236249-50c9a4fb-e1b1-40b1-9761-9c608da6a3b3.jpg)<br>

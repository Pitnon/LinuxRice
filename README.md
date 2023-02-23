
```mint
⠀⠀   Setup / Hyprland
 -----------------------------------

 ╭─ Distro  -> Archlinux x86_64
 ├─ Editor  -> VSCode
 ├─ Browser -> Firefox
 ├─ Shell   -> ZSH
 ╰─ Resource Monitor -> Btop

 ╭─ Model -> PitNon's PC
 ├─ CPU   -> i7-9700 (8) @ 4.7GHz
 ├─ GPU   -> NVIDIA GeForce RTX 2070
 ╰─ Resolution -> 2560x1440

 ╭─ WM       -> Hyprland
 ├─ Terminal -> Kitty
 ├─ Theme    -> Tokyonight-Dark-BL-LB
 ├─ Icons    -> Tokyonight-Moon
 ╰─ Font     -> CaskaydiaCove Nerd Font

      
```

---



## Installation
</div>

<details>
<summary><h3>Dependencies</h3></summary>

- Using <kbd>paru</kbd>
    ```sh
    paru -S base-devel pokemon-colorscripts-git hyprland-git hyprpicker-git xdg-desktop-portal-hyprland-git waybar-hyprland cava kitty wofi starship wl-clipboard swaync swaylock-effects swaylockd tty-clock-git playerctl pavucontrol btop mpd mpd-mpris mpv mpv-mpris qt5-base qt5-wayland qt6-base qt6-wayland lsd geany bat cliphist-bin polkit-gnome g4music wlogout visual-studio-code-bin --needed
    ```

- See https://wiki.hyprland.org/Useful-Utilities/Hyprland-desktop-portal/#installing
    ```sh
    paru -R xdg-desktop-portal-wlr
    ```

- Extra dependencies (not necessary)
    ```sh
    paru obs-studio wlrobs-hg  --needed
    ```

- [<kbd>Chaotic-AUR</kbd>](https://aur.chaotic.cx/) :: Automated building repo for AUR packages 👨🏻‍💻

> **Note**
>
> Go through the packages once, before blindly installing them.

</details>

<details>
<summary><h3>GTK Theme, Icons, Cursors</h3></summary>

- <kbd>GTK Theme</kbd> :: [<kbd>Tokyonight-Dark-BL-LB</kbd>](https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme)
    ```sh
    cd ~/Downloads
    git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git
    cd Tokyo-Night-GTK-Theme/
    sudo cp -r themes/Tokyonight-Dark-BL-LB /usr/share/themes/
    ```

- <kbd>Icons</kbd>:: [<kbd>Tokyonight-Moon</kbd>](https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme)
    ```sh
    cd ~/Downloads
    git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git
    cd Tokyo-Night-GTK-Theme/
    sudo cp -r icons/Tokyonight-Moon /usr/share/icons/
    ```

- <kbd>Cursors</kbd> :: [<kbd>Sweet-cursors</kbd>](https://github.com/EliverLara/Sweet/tree/nova/kde/cursors)
    ```sh
    cd ~/Downloads
    git clone https://github.com/EliverLara/Sweet.git -b nova
    cd Sweet/
    sudo cp -r kde/cursors/Sweet-cursors /usr/share/icons/
    ```

</details>

<details>
<summary><h3>Dotfiles</h3></summary>

```sh
git clone https://github.com/Pitnon/LinuxRice.git
cd LinuxRice
cp -r .config .icons .local .mpd .ncmpcpp .scripts ~/
cp .face .fonts.conf .dmrc .gtkrc-2.0 ~/
chmod -R +x ~/.scripts/
sudo chmod +x ~/LinuxRice/.config/hypr/
chmod +x ~/.config/hypr/autostart
```

> **Warning**
>
> Again, do not, I said DO NOT blindly run this. Backup your dots beforehand.<br>These commands are well suited for freshly installed systems.

</details>

<details>
<summary><h3>Extras</h3></summary>

#### Vscode
- Theme :: [<kbd>Sweet Dracula</kbd>](https://marketplace.visualstudio.com/items?itemName=PROxZIMA.sweetdracula)
- Extension :: [<kbd>Fix VSCode Checksums</kbd>](https://marketplace.visualstudio.com/items?itemName=lehni.vscode-fix-checksums)
- [<kbd>LinuxRice/.config/Code/User/vsc.css</kbd>](.config/Code/User/vsc.css) is a special CSS file that I use to modify vscode's UI (Vscode's core file is edited so follow the steps with care).
    ```sh
    $ # Replace [code|codium|vscodium-bin] with appropriate folder name.
    $ resPrefix=/usr/share/[code|codium|vscodium-bin]/resources/app/out/vs/code/electron-[browser|sandbox]/workbench
    $ # Symlink required files in the above folder.
    $ ln -s '/full/path/to/LinuxRice/.config/Code/User/vsc.css' $resPrefix
    $ ln -s '/full/path/to/LinuxRice/.icons/default/vsc/' $resPrefix
    ```
  - Open <kbd>$resPrefix/workbench.html</kbd> and add `<link rel="stylesheet" href='vsc.css'>` inside the `<head>` tag.
    ```sh
    $ sed -i 's;</head>;<link rel="stylesheet" href="vsc.css"></head>;g' $resPrefix/workbench.html
    ```
  - Restart Vscode. Open the command palette and execute <kbd>Fix Checksums: Apply</kbd>. Restart again.
    - Perform the above 2 steps every time Vscode is updated.
- ***I think your done now***
- If you don't want to touch the core file (which is not a big deal) you can use [<kbd>Customize UI</kbd>](https://marketplace.visualstudio.com/items?itemName=iocave.customize-ui).
  - This method may/may not work as extensions can't be guaranteed to always work.
  - All required settings are present in <kbd>settings.json</kbd>.
Use the following command to convert your <kbd>CSS</kbd> file to <kbd>Customize UI</kbd>'s json object.
    ```sh
    $ sed -ze 's/\n/ /g' -Ee 's,/\*[^*]*\*+([^/*][^*]*\*+)*/,,g' -Ee 's/ {2,}//g' -Ee 's/\}([^\{]*) \{/", "\1": "/g' -e 's/:root \{/{":root": "/g' vsc.css
    <kbd></kbd>`

#### Firefox
- Theme :: [<kbd>PROxZIMA/Sweet-Pop</kbd>](https://github.com/PROxZIMA/Sweet-Pop/)

#### Neovim ❤️
- Setup :: [<kbd>NvChad</kbd>](https://github.com/NvChad/NvChad)
- GUI :: [<kbd>Neovide</kbd>](https://github.com/neovide/neovide)
- Configs :: [<kbd>LinuxRice/.config/nvim</kbd>](.config/nvim/)

</details>

---

<details>
<summary><h2>Credits</h2></summary>

_© To ProXZima for the amazing hyprconfig, vscode, readmd and firefox_

_© [r/unixporn](https://www.reddit.com/r/unixporn)_

_© All the maintainers and the artists <3_

_© [flick0](https://github.com/flick0/dotfiles/tree/aurora) © [Syndrizzle](https://github.com/syndrizzle/hotfiles/tree/bspwm) © [NvChad](https://github.com/NvChad) © [adi1090x](https://github.com/adi1090x)_

</details>



<div align="center">

*Sooo that's it for now. See ya!!!*

***Byeee***
</div>

# <!--TITLE:START-->AK#Dotfiles<!--TITLE:END-->

<!--DESCRIPTION:START-->
My current setup of NixOS, Qtile, NeoVim, kitty, Xonsh shell, and more information about my mobile setup. Get my old setup on [legacy](https://github.com/AnzenKodo/dotfiles/tree/legacy) branch.
<!--DESCRIPTION:END-->
![My desktop screenshort](https://user-images.githubusercontent.com/50282743/201047947-c56f5f5e-f005-4995-b1e7-700082b2a00c.png)

## Installation
- Install [NixOS](https://nixos.org/manual/nixos/stable/index.html#ch-installation)
- Fork this [repo](https://github.com/AnzenKodo/dotfiles)
- Clone the forked repo:
  ```bash
  git https://github.com/Esmo0000/dotfiles2.git ~/.config/dotfiles2
  ```
- Enter the following commands:
  ```bash
  export NIXOS_CONFIG="~/.config/dotfiles/nix/configuration.nix"
  sudo nixos-rebuild switch
  ```
- Now Enjoy ;)

## Information

### Hardware Tested
- Desktop - [HP Notebook - 15q-bu007tu](https://support.hp.com/us-en/document/c05638244)
- Keyboard - [Dell Multimedia Keyboard-KB216](https://www.dell.com/en-us/shop/dell-multimedia-keyboard-kb216-us-international-qwerty-black/apd/580-admt/)
- Mouse - [Dell Optical Mouse- MS116](https://www.dell.com/en-us/shop/dell-optical-wired-mouse-black-ms116-black/apd/275-BBCB)
- Earphones - [pTron Pride Lite](https://www.amazon.in/Pride-Lite-Headphones-Cancelling-Tangle-Free/dp/B08SF85H45/ref=sr_1_15?qid=1667697159&refinements=p_89%3APTron&s=electronics&sr=1-15&th=1)

### Software
- [System](https://github.com/AnzenKodo/dotfiles/blob/master/nix/system.nix)
- [Packages](https://github.com/AnzenKodo/dotfiles/blob/master/nix/packages.nix)
- [Theme](https://github.com/AnzenKodo/dotfiles/blob/master/nix/theme.nix)
- [Fonts](https://github.com/AnzenKodo/dotfiles/blob/master/nix/fonts.nix)
- [VSCode Settings](https://gist.github.com/AnzenKodo/557f2e25dd796265c65100eda1fecb48)

#### Browser Extensions
<!--EXTENSIONS:START-->
- [Tampermonkey](https://chrome.google.com/webstore/detail/dhdgffkkebhmkfjojejmpbldmpobfkfo) - The world's most popular userscript manager
- [HyperWrite - AI Writing Companion](https://chrome.google.com/webstore/detail/kljjoeapehcmaphfcjkmbhkinoaopdnd) - Write 10x faster and beat writer’s block. Use HyperWrite to create better blog posts, emails, copy, and more.
- [GitHub Repository Size](https://github.com/harshjv/github-repo-size) - Automatically adds repository size to GitHub's repository summary
- [Wappalyzer - Technology profiler](https://www.wappalyzer.com/) - Identify web technologies
- [enable-selection](https://chrome.google.com/webstore/detail/jehoagbopeaefibnihnfgenfcilmcikj)
- [Remove YouTube Suggestions](https://github.com/lawrencehook/remove-youtube-suggestions) - Spend less time on YouTube. Customize YouTube's user interface to be less engaging.
- [Pinterest Love: Pinterest Screenshot Saver++](https://twitter.com/vitaminiser) - Save screenshots and other images to Pinterest, visually search pins and list pinnable images on a page.
- [Always active Window - Always Visible](https://add0n.com/always-active.html) - Pretend that all browser windows are active by spoofing the visibility state event and more!
- [Disable Page Visibility API](https://chrome.google.com/webstore/detail/eecfoibnnhheckhfokpihgefmlnenofb) - Add-on to disable the Page Visibility API. This prevents conferencing systems from tracking if you are currently in another window.
- [Vimium](https://chrome.google.com/webstore/detail/dbepggeogbaibhgnhhndojpepiihcmeb) - The Hacker's Browser. Vimium provides keyboard shortcuts for navigation and control in the spirit of Vim.
- [Disable visibility detection](https://chrome.google.com/webstore/detail/fholmcjfabjmfdkpojgmakdkoakgihpk) - Prevent website from accessing itself visibility info
- [Web Scrobbler](https://web-scrobbler.com)
<!--EXTENSIONS:END-->

### Keybindings
- [System Keybinding](https://github.com/AnzenKodo/dotfiles/blob/master/qtile/modules/shortcuts.py)
- [Terminal Keybinding](https://github.com/AnzenKodo/dotfiles/blob/master/kitty/shortcuts.conf)

### Others
- [Scripts](https://github.com/AnzenKodo/dotfiles/tree/master/bin)
- [Autostart](https://github.com/AnzenKodo/dotfiles/blob/master/bin/autostart)

### File Structure

<pre>
<!--TREE:START-->dotfiles
 ├─> kitty
 │   ├── current-theme.conf
 │   ├── unicode-input-favorites.conf
 │   ├── kitty.conf
 │   ├── settings.conf
 │   ├── unicode-input-favorites.conf.save
 │   ├── kitty.conf.bak
 │   └── shortcuts.conf
 ├─> browser
 │   ├── Extensions.bak
 │   └── Bookmarks.bak
 ├─> nix
 │   ├── theme.nix
 │   ├── packages.nix
 │   ├── fonts.nix
 │   ├── system.nix
 │   ├── configuration.nix
 │   └── home.nix
 ├── git.init
 ├─> shell
 │   ├── export.sh
 │   ├── config.fish
 │   ├── profile.sh
 │   └── alias.sh
 ├─> bin
 │   ├── autostart
 │   ├── backup
 │   ├── wallpaper.js
 │   ├── chrome_extensions_backup.js
 │   ├── setup
 │   └── emoji
 └─> qtile
     ├── config.py
     └─> modules
         ├── hooks.py
         ├── floating_layout.py
         ├── advance.py
         ├── shortcuts.py
         ├── screen.py
         └── layout.py<!--TREE:END-->
</pre>

<!--BOOKMARKS:START-->
## Other Recommendation

### Find Software
- [awesome-ricing](https://github.com/fosslife/awesome-ricing#packages) - A curated list of awesome tools and technology to help you out with ricing on linux
- [LibHunt](https://www.libhunt.com/) - Trending open-source projects and their alternatives.
- [Product Hunt – The best new products in tech.](https://www.producthunt.com/)
- [AlternativeTo](https://alternativeto.net/) - Crowdsourced software recommendations
- [Slant](https://www.slant.co/) - TRUSTWORTHY PRODUCT RANKINGS FOR ALL YOUR SHOPPING NEEDS.

### Editor

#### Frameworks
- [LunarVim](https://www.lunarvim.org/#opinionated) - An IDE layer for Neovim with sane defaults. Completely free and community driven.
- [Doom Emacs](https://github.com/doomemacs/doomemacs) - An Emacs framework for the stubborn martian hacker
- [SpaceVim](https://spacevim.org/) - A distribution of the Vim editor that’s inspired by spacemacs.
- [Spacemacs](https://www.spacemacs.org/) - Emacs advanced Kit focused on Evil
- [Neovim](https://neovim.io/) - hyperextensible Vim-based text editor
- [GNU Emacs](https://www.gnu.org/software/emacs/) - An extensible, customizable, free/libre text editor and more.
- [vim](https://www.vim.org/) - A highly configurable text editor built to make creating and changing any kind of text very efficient.
- [Kakoune](https://kakoune.org/) - Modal editor · Faster as in fewer keystrokes · Multiple selections · Orthogonal design
- [Helix](https://helix-editor.com/) - A post-modern text editor.
- [VSCodium](https://vscodium.com/) - Open Source Binaries of VSCode

### Terminal
- [awesome-cli-apps](https://github.com/agarrharr/awesome-cli-apps) - 🖥 📊 🕹 🛠 A curated list of command line apps
- [terminals-are-sexy](https://github.com/k4m4/terminals-are-sexy) - 💥 A curated list of Terminal frameworks, plugins & resources for CLI lovers.
- [awesome-console-services](https://github.com/chubin/awesome-console-services) - A curated list of awesome console services (reachable via HTTP, HTTPS and other network protocols)
- [awesome-terminals](https://github.com/cdleon/awesome-terminals) - Terminal Emulators
- [kitty](https://sw.kovidgoyal.net/kitty/) - The fast, feature-rich, GPU based terminal emulator
- [Alacritty](https://alacritty.org/) - A modern terminal emulator that comes with sensible defaults, but allows for extensive configuration.
- [st (simple terminal)](https://st.suckless.org/) - suckless.org software that sucks less
- [Hyper](https://hyper.is/) - A terminal built on web technologies

### Window Manager
- [Qtile – A hackable tiling window manager written in Python](http://www.qtile.org/)
- [i3](https://i3wm.org/) - improved tiling wm
- [xmonad](https://xmonad.org/) - the tiling window manager that rocks
- [awesome](https://awesomewm.org/) - A highly configurable, next generation framework window manager for X. It is very fast, extensible and licensed under the GNU GPLv2 license.
- [dwm](https://dwm.suckless.org/) - dynamic window manager
- [Sway](https://swaywm.org/) - A tiling Wayland compositor and a drop-in replacement for the i3 window manager for X11.

### Wallpaper
- [WallpaperCave](https://wallpapercave.com/) - A online community of desktop wallpapers enthusiasts. Join now to share and explore tons of collections of awesome wallpapers.
- [wallhaven.cc](https://wallhaven.cc/) - Awesome Wallpapers

## About My Phone

### Hardware
- [Redmi 6 Pro](https://www.mi.com/in/redmi-6-pro/) - Phone
- [pTron Pride Lite](https://www.amazon.in/Pride-Lite-Headphones-Cancelling-Tangle-Free/dp/B08SF85H45/ref=sr_1_11?qid=1667697159&refinements=p_89%3APTron&s=electronics&sr=1-11) - Earphones

### System
- [MIUI](https://global.miui.com/) - OS

### Apps

#### Utils
- [Brave Browser](https://brave.com/) - Browser
- [Habitory](https://habitory.com/) - Habit Tracking
- [Zettel Notes](https://play.google.com/store/apps/details?id=org.eu.thedoc.zettelnotes) - Note Taking
- [Stay Focused](https://www.stayfocused.me/) - App Blocker
- [Voice:](https://github.com/PaulWoitaschek/Voice) - Audiobook Player
- [Olauncher](https://github.com/tanujnotes/Olauncher) - Launcher
- [Mi File Manager](https://play.google.com/store/apps/details?id=com.mi.android.globalFileexplorer&hl=en_IN&gl=US)
- [Calculator](https://play.google.com/store/apps/details?id=com.miui.calculator&hl=en_IN&gl=US)
- [Pano Scrobbler](https://github.com/kawaiiDango/pScrobbler) - Scrobbler

#### Google Apps
- [Google Play](https://play.google.com/store) - App Store
- [Google Calendar](https://calendar.google.com/) - Calendar
- [Google Maps](https://www.google.com/maps/) - Map
- [Google Photos](https://photos.google.com/) - Gallery
- [Google Play Books](https://play.google.com/books) - Books Reader
- [Google Podcasts](https://podcasts.google.com/) - Podcasts Player
- [YouTube Music](https://music.youtube.com/) - Sound

#### Social Media
- [Pinterest](https://www.pinterest.com/AnzenKodo/) - Saving Images
- [Instagram](https://www.instagram.com/) - Personal space
- [WhatsApp](https://www.whatsapp.com/) - Personal Chatting

## Inspiration
- [NNBnh/dotfiles](https://github.com/NNBnh/dotfiles) - Tiny and simple personal Đotfiles that can be bootstrap with a single command!
- [BrodieRobertson/dotfiles](https://github.com/BrodieRobertson/dotfiles) - Various configuration files for programs that Brodie Robertson use
- [Qtile Example](https://github.com/qtile/qtile-examples) - Example configurations and scripts for Qtile
- [tjdevries/config_manager](https://github.com/tjdevries/config_manager) - My configuration files and tools
- [ThePrimeagen/.dotfiles](https://github.com/ThePrimeagen/.dotfiles) - The Primeagen mostly NeoVim dotfiles
- [Nix Config](https://github.com/gvolpe/nix-config) - Current, and always evolving. NixOS configuration files, home-manager, neovim, etc.
- [owl4ce/dotfiles](https://github.com/owl4ce/dotfiles) - Aesthetic OpenboxWM Environment
- [drishal / dotfiles](https://gitlab.com/drishal/dotfiles/)
- [sherubthakur/dotfiles](https://github.com/sherubthakur/dotfiles) - My dotfiles + system configuration for NixOS and mac
- [montchr/dotfield](https://github.com/montchr/dotfield) - All I see is little dots – some are smeared, and some are spots.

## Resources
- [NixOS manual](https://nixos.org/manual/nixos/unstable/) - This manual describes how to install, use and extend NixOS.
- [NixOS Wiki](https://nixos.wiki/) - Wikipedia for NixOS.
- [Home Manager Manual](https://rycee.gitlab.io/home-manager/) - This manual will eventually describe how to install, use, and extend Home Manager.
- [ArchWiki](https://wiki.archlinux.org/) - The best Linux wiki, even if you don't use Arch.
- [NNBnh/dotfiles Wiki](https://github.com/NNBnh/dotfiles/wiki) - The most ambitious OS rice guide
- [elenapan/dotfiles Wiki](https://github.com/elenapan/dotfiles/wiki) - Articles that answer people's most common questions here.
<!--BOOKMARKS:END-->

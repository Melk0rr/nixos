# Window rules config
{
  wayland.windowManager.hyprland.settings.windowrulev2 = [
    # Qt rules
    "opacity 0.80 0.80,class:^([Bb]rave-browser)$" # Brave-Qt
    "opacity 0.80 0.80,class:^(com.obsproject.Studio)$" # Obs-Qt
    "opacity 0.80 0.80,class:^(.*qbittorrent.*)$" # qbittorrent-Qt
    "opacity 0.80 0.80,class:^(net.davidotek.pupgui2)$" # ProtonUp-Qt
    "opacity 0.80 0.80,class:^(org.openrgb.OpenRGB)$" # OpenRGB-Qt
    "opacity 0.80 0.80,class:^([Aa]udacious)$" # Audacious-Gtk-Qt
    "opacity 0.80 0.80,class:^(org.keepassxc.KeePassXC)$" # KeepassXC-Qt
    "opacity 0.80 0.80,class:^(org.kde.ark)$" # Ark-Qt
    "opacity 0.80 0.80,class:^(qt5ct)$" # Qt5ct-Qt
    "opacity 0.80 0.80,class:^(qt6ct)$" # Qt6ct-Qt
    "opacity 0.80 0.80,class:^(kvantummanager)$" # Kvantum-Qt
    "opacity 0.80 0.80,class:^(org.kde.partitionmanager)$" # Kde-partitionmanager-Qt
    "opacity 0.80 0.70,class:^(org.kde.polkit-kde-authentication-agent-1)$" # Kde-polkit-Qt
    "opacity 0.80 0.80,class:^(org.kde.dolphin)$" # Dolphin-Qt
    "opacity 0.80 0.80,class:^(pcmanfm-qt)$" # Pcmanfm-Qt

    # GTK rules
    "opacity 0.90 0.90,class:^([Ll]adybird)$" # Ladybird-Gtk
    "opacity 0.80 0.80,class:^(zen)$" # Zen-Gtk
    "opacity 0.80 0.80,class:^(zen-beta)$" # Zen-Gtk
    "opacity 0.80 0.80,class:^(zen-alpha)$" # Zen-Gtk
    "opacity 0.80 0.80,class:^(firefox)$" # Firefox-Gtk
    "opacity 0.80 0.80,class:^(floorp)$" # Floorp-Gtk
    "opacity 0.80 0.80,class:^(app.drey.Warp)$" # Warp-Gtk
    "opacity 0.80 0.80,class:^(yad)$" # Protontricks-Gtk
    "opacity 0.80 0.80,class:^(Signal)$" # Signal-Gtk
    "opacity 0.80 0.80,class:^(Zotero)$" # Zotero-Gtk
    "opacity 0.80 0.80,class:^(gnome-boxes)$" # Boxes-Gtk
    "opacity 0.80 0.80,class:^(lollypop)$" # Lollypop-Gtk
    "opacity 0.90 0.90,class:^(com.github.rafostar.Clapper)$" # Clapper-Gtk
    "opacity 0.80 0.80,class:^(com.github.tchx84.Flatseal)$" # Flatseal-Gtk
    "opacity 0.80 0.80,class:^(hu.kramo.Cartridges)$" # Cartridges-Gtk
    "opacity 0.80 0.80,class:^(io.github.alainm23.planify)$" # planify-Gtk
    "opacity 0.80 0.80,class:^(io.gitlab.theevilskeleton.Upscaler)$" # Upscaler-Gtk
    "opacity 0.80 0.80,class:^(com.github.unrud.VideoDownloader)$" # VideoDownloader-Gtk
    "opacity 0.80 0.80,class:^(io.gitlab.adhami3310.Impression)$" # Impression-Gtk
    "opacity 0.80 0.80,class:^(io.missioncenter.MissionCenter)$" # MissionCenter-Gtk
    "opacity 0.80 0.80,class:^(net.nokyan.Resources)$" # Resources-Gtk
    "opacity 0.80 0.80,class:^(org.gnome.baobab)$" # Baobab-Gtk
    "opacity 0.80 0.80,class:^(com.rafaelmardojai.Blanket)$" # Blanket
    "opacity 0.80 0.80,class:^(io.github.flattool.Warehouse)$" # Warehouse-Gtk
    "opacity 0.80 0.80,class:^(Pinentry-gtk)$" # Pinentry-Gtk
    "opacity 0.80 0.80,class:^(com.github.wwmm.easyeffects)$" # Easyeffects-Gtk
    "opacity 0.80 0.80,class:^(easytag)$" # EasyTag-Gtk
    "opacity 0.80 0.80,class:^(io.gitlab.news_flash.NewsFlash)$" # NewsFlash-Gtk
    "opacity 0.80 0.80,class:^(veracrypt)$" # VeraCrypt-Gtk
    "opacity 0.80 0.80,class:^(.*timeshift.*)$" # Timeshift-Gtk
    "opacity 0.80 0.80,class:^(thunderbird)$" # Thunderbird-Gtk
    "opacity 0.80 0.80,class:^(localsend)$" # Localsend-Gtk
    "opacity 0.80 0.80,class:^(gufw.py)$" # Gufw-Gtk
    "opacity 0.80 0.80,class:^(protonvpn-app)$" # ProtonVPN-Gtk
    "opacity 0.80 0.80,class:^(com.jeffser.Alpaca)$" # ProtonVPN-Gtk
    "opacity 0.80 0.80,class:^(Ventoy2Disk.gtk3)$" # ProtonVPN-Gtk
    "opacity 0.80 0.80,class:^(.*coolercontrol.*)$" # CoolerControl
    "opacity 0.80 0.80,class:^(org.gnome.Nautilus)$" # Nautilus-Gtk
    "opacity 0.80 0.80,class:^(nemo)$" # Nemo-Gtk
    "opacity 0.80 0.80,class:^(mediainfo-gui)$" # Mediainfo-Gtk
    "opacity 0.80 0.80,class:^(thunar)$" # Thunar-Gtk
    "opacity 0.80 0.80,class:^(nwg-look)$" # Nwg-look-Gtk
    "opacity 0.80 0.80,class:^(gnome-disks)$" # Gnome-disks-Gtk
    "opacity 0.80 0.70,class:^(pavucontrol)$" # Pavucontrol-Gtk
    "opacity 0.80 0.70,class:^(blueman-manager)$" # Blueman-manager-Gtk
    "opacity 0.80 0.70,class:^(nm-applet)$" # Nm-applet-Gtk
    "opacity 0.80 0.70,class:^(nm-connection-editor)$" # Nm-applet-Gtk
    "opacity 0.80 0.70,class:^(polkit-gnome-authentication-agent-1)$" # Gnome-polkit-Gtk
    "opacity 0.80 0.70,class:^(org.freedesktop.impl.portal.desktop.gtk)$" # Portal-Gtk
    "opacity 0.70 0.70,class:^(zenity)$" # Zenity-Gtk
    "opacity 0.80 0.70,class:^(org.freedesktop.impl.portal.desktop.hyprland)$" # Portal-Hyprland

    # Electron rules
    "opacity 0.70 0.70,class:^([Ss]team)$" # Steam-Electron
    "opacity 0.70 0.70,class:^(steamwebhelper)$" # Steam-Electron
    "opacity 0.70 0.70,class:^([Hh]eroic)$" # Heroic-Electron
    "opacity 0.80 0.80,class:^(com.github.Aylur.ags)$" # Discord-Electron
    "opacity 0.80 0.80,class:^(discord)$" # Discord-Electron
    "opacity 0.80 0.80,class:^([Ww]ebCord)$" # WebCord-Electron
    "opacity 0.80 0.80,class:^(ArmCord)$" # ArmCord-Electron
    "opacity 0.80 0.80,class:^(Upscayl)$" # Upscayl-Electron
    "opacity 0.80 0.80,class:^(electron)$" # Electron
    "opacity 0.80 0.80,class:^(.*draw.io.*)$" # draw.io-Electron
    "opacity 0.80 0.80,class:^(Logseq)$" # Logseq-Electron
    "opacity 0.80 0.80,class:^(Joplin)$" # Joplin-Electron
    "opacity 0.80 0.80,class:^(Notesnook)$" # Notesnook-Electron
    "opacity 0.80 0.80,class:^(.*gpt4all.*)$" # Gpt4All-Electron
    "opacity 0.80 0.80,class:^(AppFlowy)$" # Appflowy-Electron
    "opacity 0.80 0.80,class:^(kanri)$" # Kanri-Electron
    "opacity 0.80 0.80,class:^(Session)$" # Session-Electron
    "opacity 0.80 0.80,class:^(chat-simplex-desktop-MainKt)$" #SimpleX-Electron
    "opacity 0.80 0.80,class:^(superProductivity)$" # superProductivity-Electron
    "opacity 0.80 0.80,class:^(focalboard-app)$" # Focalboard-Electron
    "opacity 0.80 0.80,class:^([Pp]roton [Mm]ail)$" # ProtonMail-Electron
    "opacity 0.80 0.80,class:^([Pp]roton [Pp]ass)$" # ProtonPass-Electron
    "opacity 1.00 override 1.00 override,class:^(mpv)$" # mpv
    "opacity 1.00 override 1.00 override,class:^([Ff]ree[Tt]ube)$" # FreeTube-Electron
    "opacity 0.70 0.70,initialTitle:^(Spotify Free)$" # Spotify-Electron
    "opacity 0.70 0.70,class:^(Spotify)$" # Spotify-Electron
    "opacity 0.80 0.80,class:^(code-oss)$" # Code-OSS-Electron
    "opacity 0.80 0.80,class:^(.*codium.*)$" # VSCodium-Electron
    "opacity 0.80 0.80,class:^(Code)$" # VSCode-Electron
    "opacity 0.80 0.80,class:^(code-url-handler)$" # VSCode-Electron
    "opacity 0.80 0.80,class:^(code-insiders-url-handler)$" # VSCode-Electron

    # Terminal
    "opacity 0.80 0.80,class:^(kitty)$" # Kitty

    # Floating rules
    # Gtk rules
    "float,class:^(Signal)$" # Signal-Gtk
    "float,class:^(com.github.rafostar.Clapper)$" # Clapper-Gtk
    "float,class:^(app.drey.Warp)$" # Warp-Gtk
    "float,class:^(yad)$" # Protontricks-Gtk
    "float,class:^(eog)$" # Imageviewer-Gtk
    "float,class:^(io.github.alainm23.planify)$" # planify-Gtk
    "float,class:^(io.gitlab.theevilskeleton.Upscaler)$" # Upscaler-Gtk
    "float,class:^(com.github.unrud.VideoDownloader)$" # VideoDownloader-Gkk
    "float,class:^(io.gitlab.adhami3310.Impression)$" # Impression-Gtk
    "float,class:^(blueman-manager)$" # Blueman-manager-Gtk
    "float,class:^(nm-applet)$" # NM-Applet-Gtk
    "float,class:^(nm-connection-editor)$" # NM-Applet-Gtk
    "float,class:^(firefox)$,title:^(Picture-in-Picture)$" # Firefox-Gtk
    "float,class:^(firefox)$,title:^(Library)$" # Firefox-Gtk
    "float,class:^(floorp)$,title:^(Picture-in-Picture)$" # Floorp-Gtk
    "float,class:^(floorp)$,title:^(Library)$" # Floorp-Gtk
    "float,class:^(nwg-look)$" # Nwg-look-Gtk
    "float,class:^(pavucontrol)$" # Pavucontrol-Gtk

    # Qt rules
    "float,class:^(net.davidotek.pupgui2)$" # ProtonUp-Qt
    "float,class:^(org.kde.polkit-kde-authentication-agent-1)$" # KDE-Polkit-Qt
    "float,class:^(org.kde.dolphin)$,title:^(Progress Dialog — Dolphin)$" # Dolphin-Qt
    "float,class:^(org.kde.dolphin)$,title:^(Copying — Dolphin)$" # Dolphin-Qt
    "float,class:^(vlc)$" # VLC-Qt
    "float,class:^(qt5ct)$" # Qt5ct-Qt
    "float,class:^(qt6ct)$" # Qt6ct-Qt
    "float,class:^(kvantummanager)$" # Kvantum-Qt
    "float,class:^(org.kde.ark)$" # Ark-Qt

    # Electron rules
    "tile,class:^(chat-simplex-desktop-MainKt)$" #SimpleX-Electron

    # Terminal
    "float,class:^(kitty)$,title:^(top)$" # Top
    "float,class:^(kitty)$,title:^(btop)$" # Btop
    "float,class:^(kitty)$,title:^(htop)$" # Htop
  ];

  wayland.windowManager.hyprland.settings.layerrule = [
    "blur,rofi"
    "ignorezero,rofi"
    "blur,notifications"
    "ignorezero,notifications"
    "blur,swaync-notification-window"
    "ignorezero,swaync-notification-window"
    "blur,swaync-control-center"
    "ignorezero,swaync-control-center"
    "blur,logout_dialog"
  ];
}

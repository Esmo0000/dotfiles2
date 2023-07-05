{ pkgs, config, ... }:{
  # Theme - Adwaita
  gtk = {
    enable = true;
    iconTheme.name = "Adwaita";
    theme = {
      package = pkgs.gnome.gnome-themes-extra;
      name = "Adwaita-dark";
    };
    gtk2.configLocation = "${config.xdg.configHome}/gtk-2.0/gtkrc";
  };

  # Cursor Theme - Adwaita
  home.pointerCursor = {
    name = "Adwaita";
    package = pkgs.gnome.gnome-themes-extra;
    x11.enable = true;
    gtk.enable = true;
  };
}

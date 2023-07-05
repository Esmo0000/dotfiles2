{ pkgs, ... }:
{
  # System fonts
  fonts = {
    # Fonts packages
    fonts = with pkgs; [
      (nerdfonts.override {
        fonts = [
          "JetBrainsMono"
          "Ubuntu"
          "DejaVuSansMono"
          /* "Noto" */
        ];
      })
    ];

    # Set default fonts
    fontconfig.defaultFonts = {
      serif = [ "Noto Serif" "DejaVu Serif" ];
      sansSerif = [ "Ubuntu" "Noto Sans" "DejaVu Sans" ];
      monospace = [ "JetBrains Mono" "DejaVu Sans Mono"];
      emoji = [ "Noto Color Emoji" ];
    };

    # Basic set of fonts providing several font styles and families and
    # reasonable coverage
    enableDefaultFonts = true;
  };
}

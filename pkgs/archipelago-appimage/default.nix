{ pkgs
, appimageTools
, fetchurl
}:
appimageTools.wrapType2 {
  name = "archipelago-appimage";
  src = fetchurl {
    url = "https://github.com/ArchipelagoMW/Archipelago/releases/download/0.5.0/Archipelago_0.5.0_linux-x86_64.AppImage";
    hash = "sha256-Dw5BBfCthB9xUJXYmnmIwmqlT/L24QZnKyELLjPGNRA=";
  };
}

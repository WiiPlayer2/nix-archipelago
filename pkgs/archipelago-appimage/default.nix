{ pkgs
, appimageTools
, fetchurl
, makeDesktopItem
}:
let
  pname = "archipelago-appimage";
  version = "0.5.0";
  icon = fetchurl {
    url = "https://raw.githubusercontent.com/ArchipelagoMW/Archipelago/${version}/data/icon.png";
    hash = "sha256-VbjpZBBs3i9Sg56btc3M65XkJ9zgCnGJKxFskRGOknM=";
  };
  desktopItem = makeDesktopItem {
      name = pname;
      desktopName = "Archipelago Launcher (AppImage)";
      exec = "${pname} %U";
      icon = icon;
      categories = [ "Game" ];
    };
in
appimageTools.wrapType2 {
  inherit pname version;

  src = fetchurl {
    url = "https://github.com/ArchipelagoMW/Archipelago/releases/download/${version}/Archipelago_${version}_linux-x86_64.AppImage";
    hash = "sha256-Dw5BBfCthB9xUJXYmnmIwmqlT/L24QZnKyELLjPGNRA=";
  };

  extraInstallCommands = ''
    mkdir -p "$out/share"
    ln -s "${desktopItem}/share/applications" "$out/share/"
  '';
}

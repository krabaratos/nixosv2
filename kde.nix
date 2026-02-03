{ config, pkgs, ... }:

{
  # Enable the KDE Plasma Desktop Environment.
  
  services.displayManager.sddm = {
    enable = true;
    theme = "sddm-astronaut-theme";
    wayland.enable = true;
    extraPackages = with pkgs; [ 
      kdePackages.qtmultimedia
      kdePackages.qtsvg
      kdePackages.qtvirtualkeyboard
      kdePackages.qtbase ];
  };
  services.desktopManager.plasma6.enable = true;

  # Optional: add KDE apps
  environment.systemPackages = with pkgs; [
  darkly
  kdePackages.kate
  kdePackages.kcalc
  kdePackages.kdialog
  kdePackages.flatpak-kcm
  kdePackages.kpipewire
  kdePackages.sddm-kcm
  libportal-qt6
  sddm-astronaut
  ];
}





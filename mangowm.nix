{ config, pkgs, lib, ... }:

{
  # Display manager: Ly (minimal, Wayland-friendly)
  services.displayManager.ly.enable = true;

  # Hyprland compositor
  programs.mangowc = {
    enable = true;
  };

  # GVfs for Nautilus + File Roller integration
  services.gvfs.enable = true;

  # System packages: Hyprland utilities, file manager, archive tools, bar, launcher
  environment.systemPackages = with pkgs; [
    #Mango Needs
    foot
    kitty
    pavucontrol
    gnome-text-editor
    lxqt.lxqt-policykit

    # GTK theming
    nwg-look
    
    # Qt theming
   # qt6ct
   # qt5ct
   # kvantum
    
    # File management
    nautilus
    file-roller

    # Networking
    networkmanagerapplet

  

    # UI extras
    waybar
    wofi
  ];

  # Wayland session variables
  environment.sessionVariables = {
    XDG_SESSION_TYPE = "wayland";
    NIXOS_OZONE_WL = "1";
  };
}

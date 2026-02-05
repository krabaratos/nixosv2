{ config, pkgs, ... }:

{
  programs.sway = { 
   enable = true; 
   wrapperFeatures.gtk = { 
   enable = true; 
   }; 
}; 



  # Display manager: Ly (minimal, Wayland-friendly)
  services.displayManager.ly.enable = true;

  # GVfs for Nautilus + File Roller integration
  services.gvfs.enable = true;

  # System packages: file manager, archive tools, bar, launcher
  environment.systemPackages = with pkgs; [
    kitty

    # GTK theming
    nwg-look
    
    # Qt theming (uncomment if needed)
    # qt6ct
    # qt5ct
    # kvantum
    
    # File management
    nautilus
    file-roller

    # Networking
    networkmanagerapplet

    # Archive backends (for File Roller)
    p7zip
    unzip
    unrar
    xz
    bzip2
    gzip
    gnutar
    zip

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

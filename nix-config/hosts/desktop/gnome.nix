{ pkgs, ... }:

{
    programs.dconf.enable = true;

    environment.systemPackages = with pkgs; [ 
        gnomeExtensions.appindicator
        gnome.adwaita-icon-theme    
    ];

    environment.gnome.excludePackages = (with pkgs; [
        gnome-photos
        gnome-tour
    ]) ++ (with pkgs.gnome; [
        cheese 
        gnome-music
        gnome-terminal
        gnome-calendar
        gedit 
        epiphany 
        geary 
        evince 
        gnome-characters
        totem 
        tali
        iagno 
        hitori
        atomix 
        baobab 
        epiphany 
        simple-scan
        totem 
        yelp 
        evince 
        geary
        gnome-calculator
        gnome-calendar
        gnome-contacts
        gnome-logs
        gnome-maps
        gnome-music
        gnome-screenshot
        gnome-system-monitor
        pkgs.gnome-connections
        pkgs.gnome-console
    ]);


}

{ config, pkgs, ... }:

{
    services.xserver = {
        displayManager.lightdm.enable = true;
        displayManager.lightdm.extraConfig = "logind-check-graphical=true";
        displayManager.defaultSession = "none+i3";
        windowManager.i3 = {
            enable = true;
            package = pkgs.i3-gaps;
            extraPackages = with pkgs; [         
                dmenu   
                i3lock  
                i3status
                i3blocks
            ];     
        };   
    };
}

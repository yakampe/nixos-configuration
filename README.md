# Install 

1. Add git to `/etc/nixos/configuration.nix` 
```
    environment.systemPackages = with pkgs; [
        pkgs.git
    ];
```
2. `git clone https://github.com/yakampe/nixos-configuration.git` at user home
3. If username is not `yanis`. Go to `./nix-config/common.nix` and change the `users.users.yanis` and `users.users.yanis.description` to your username
4. Copy `config-example.json` to `config.json` and fill out the json
5. Execute `./install-nixos.sh` 
6. Ensure `install-home-manager.zsh` has correct version according to your NixOS version `https://nix-community.github.io/home-manager/index.xhtml#sec-install-standalone`
7. Run `./install-home-manager.zsh`
8. Reboot?
9. Run `./configuration.sh`
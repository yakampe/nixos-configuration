{ pkgs, ... }:

{
    programs.zsh = {
        history.extended = true;
        enable = true;
        initExtra = ''
                # Load version control information
                autoload -Uz vcs_info
                precmd() { vcs_info }

                # Format the vcs_info_msg_0_ variable
                zstyle ':vcs_info:git:*' formats '%F{red}%b%F{white}'
                
                # Set up the prompt (with git branch name)
                setopt PROMPT_SUBST
                PROMPT='%n@''${PWD/#$HOME/~} ''${vcs_info_msg_0_} > '
        '';

        shellAliases = {
            homeupdate = "home-manager switch";
            update = "sudo nixos-rebuild switch";
            homeedit = "home-manager edit";

            # Git aliases
            g = "git";
            gst = "git status";
            gd = "git diff";
            gl = "git pull";
            gp = "git push";
            gco = "git checkout";
            gcm = "git checkout main";
            gb = "git branch";
            gba = "git branch -a";
            glg = "git log --stat --max-count=10";
            glgg = "git log --graph --max-count=10";
            glgga = "git log --graph --decorate --all";
            glo = "git log --oneline --decorate --color";
            glog = "git log --oneline --decorate --color --graph";
            gss = "git status -s";
            grh = "git reset HEAD";
            grhh = "git reset HEAD --hard";
            gclean = "git reset --hard && git clean -dfx";
            gsts = "git stash show --text";
            gsta = "git stash";
            gstp = "git stash pop";
            gstd = "git stash drop";

            # Terraform aliases
            tf = "terraform";
            tfp = "terraform plan";
            tfa = "terraform apply";
            tfi = "terraform init";
        };
    };
}

{ pkgs, ... }:

let
  absolutePath = toString ../config.json;
  config = builtins.fromJSON (builtins.readFile absolutePath);
in
{
  programs.git = {
    enable = true;
    ignores = [
      ".envrc"
      ".direnv"
    ];
    userName = config.git.username;
    userEmail = config.git.email;
  };
}


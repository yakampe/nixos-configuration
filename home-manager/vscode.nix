{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = [
	    pkgs.vscode-extensions.bbenoist.nix
	  ];
  };
}

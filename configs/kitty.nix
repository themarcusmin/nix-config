{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    theme = "Dracula";
    font = {
      name = "Fira Code";
      size = 14;
    };
  };
}

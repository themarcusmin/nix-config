{ config, pkgs, lib, ... }:

{
  imports = [
    ./i3.nix
    ./kitty.nix
  ];
}

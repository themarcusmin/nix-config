{ pkgs, lib, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
    config = {
      modifier = "Mod4";
      
      bars = [ ];

      window.border = 0;

      gaps = {
        inner = 15;
        outer = 5;
      };

      keybindings = import ./i3-keybindings.nix "Mod4";

      assigns = {
        "2: web" = [{ class = "^Firefox$"; }];
      };

      startup = [
        { command = "exec firefox"; }
	{ command = "exec kitty"; }
        {
          command = "exec i3-msg workspace 1";
          always = true;
          notification = false;
        }
        {
          command = "systemctl --user restart polybar.service";
          always = true;
          notification = false;
        }
        {
          command = "${pkgs.feh}/bin/feh --bg-scale ~/background.png";
          always = true;
          notification = false;
        }
      ];
    };
  };
}

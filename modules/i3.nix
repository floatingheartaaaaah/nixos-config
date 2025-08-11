{config , lib ,  pkgs , dotsDir , ...}:
let 
configDir = "/home/hmmmaaah/.config";
in
{
	xsession.windowManager.i3 = {
		enable = true ;
		package = pkgs.i3-gaps ;
		config = {
			modifier = "Mod4";
			gaps = {
				inner = 10 ;
				outer = 5 ;
			};
		};
	};
	
	#picom installation and setup for i3 
	services.picom = {
		enable = true;
	};
	home.file."${configDir}/picom/picom.conf" = {
		enable = true ;
		source = lib.mkForce "${dotsDir}/picom.conf";
	};

	#greenclip config file setup for the user for clipboard 
 	home.file."${configDir}/greenclip.toml" = {
		enable = true ;
		source = "${dotsDir}/greenclip.toml";
	};

	
	home.file."${configDir}/lock.sh" = {
		enable = true ;
		source = "${dotsDir}/lock.sh";
	};


	#config setup for rofi 
	home.file = {
		"${configDir}/rofi/config.rasi" = {
			enable = true ;
			source = "${dotsDir}/config.rasi";
		};
		"${configDir}/rofi/gruvbox.rasi" = {
			enable = true ;
			source = "${dotsDir}/gruvbox.rasi";
		};
	};


	#polybar configuration 
	
	home.file = {
 		"${configDir}/polybar/config.ini" = {
			enable = true ;
			source = "${dotsDir}/polybar.config.ini";
		};
		"${configDir}/polybar/launch_polybar.sh" ={
			enable = true ;
			source = "${dotsDir}/launch_polybar.sh";
		};

	};
	
	#i3 configuration for wm
	home.file."${configDir}/i3/config" = {
		enable = true ;
		source = lib.mkForce "${dotsDir}/i3.config";
	};


	#wifi network launcher with rofi 

	home.file."${configDir}/wifi_networks.sh" = {
		enable = true ;
		source = "${dotsDir}/wifi_networks.sh";
	};

}

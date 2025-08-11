{config , pkgs  , dotsDir ,  ...}:


{
 	programs.zsh = {
		enable = true ;
		enableCompletion = true ;
		autosuggestion = {
			enable = true ;
	} ;
		syntaxHighlighting.enable = true ;
 		
		#Shell Aliases for zsh shell
		shellAliases = {
			ll = "ls -l";
			hmmm = "sudo nixos-rebuild switch --impure";
			uuuh = "sudo nix-collect-garbage -d";
			home = "cd ~";
			cls = "clear";
		};
		#Extra config for zsh shell 
		initContent = builtins.readFile "${dotsDir}/config.zsh";
 
 		#Configuration for oh my zsh with plugins
		oh-my-zsh = {
			enable = true ;
			plugins = ["git" "dotenv"];
			theme = "robbyrussell";
		};

		history.size = 10000;
	};     
}

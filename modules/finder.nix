{config , pkgs , ...}:



{
	programs = {
		#fzf for fuzzy file search
		fzf = {
			enable = true  ;
			enableZshIntegration = true ;
		};

		#yazi for terminal file management
		yazi = {
			enable = true ;
		};
	};
}

{ config, pkgs, dotsDir, ... }:

{
  programs.tmux = {
    enable = true;
    shortcut = "q";
    escapeTime = 10;
    keyMode = "vi";
    terminal = "tmux-256color";
    historyLimit = 50000;
    plugins = with pkgs.tmuxPlugins; [ sensible yank resurrect ];
    extraConfig = builtins.readFile "${dotsDir}/tmux.conf";
  };
}


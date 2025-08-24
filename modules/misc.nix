{ config, pkgs, dotsDir, lib, ... }:

{

  # file symlinking for ssh config 
  home.file."${configDir}/.ssh/config" = {
    enable = true;
    source = lib.mkForce "${dotsDir}/ssh.config";
  };
}


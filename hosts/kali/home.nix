{ config, pkgs, ... }:


{ 
    #import the user configured applications for home-manager 
  imports = [
     ../../dots/home-manager-skeleton.nix
  ];
   user.enable = true ;
   user.username = "ik";
}

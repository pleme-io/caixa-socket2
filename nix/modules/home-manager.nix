# nix/modules/home-manager.nix — auto-generated from socket2.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.socket2; in {
  options.programs.socket2 = {
    enable = lib.mkEnableOption "socket2";
    package = lib.mkOption { type = lib.types.package; default = pkgs.socket2 or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}

# nix/modules/nixos.nix — auto-generated from socket2.caixa.lisp
# description: ""
{ config, lib, pkgs, ... }:
let
  cfg = config.services.socket2;
in {
  options.services.socket2 = {
    enable = lib.mkEnableOption "socket2";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.socket2 or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}

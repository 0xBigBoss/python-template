# shell.nix — compatibility wrapper for non-flake Nix users
(import (
  let
    lock = builtins.fromJSON (builtins.readFile ./flake.lock);
    compat = lock.nodes.flake-compat.locked;
  in
    fetchTarball {
      url = "https://github.com/${compat.owner}/${compat.repo}/archive/${compat.rev}.tar.gz";
      sha256 = compat.narHash;
    }
) {src = ./.;})
.shellNix

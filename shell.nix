{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let
  myPkgs = {
    binutils_mips_linux_gnu = stdenv.mkDerivation {
      name = "binutils-2.36.1-mips";
      src = fetchurl {
        url = "http://mirrors.kernel.org/gnu/binutils/binutils-2.36.1.tar.gz";
        sha256 = "e68edeaaeb6ca9687b6dcbaedd1b376506baad2d48de26a885fc5ab6acb839da";
      };
      configureFlags = [ "--target=mips-linux-gnu" ];
    };
    qemu_irix = stdenv.mkDerivation {
      name = "qemu-irix";
      src = fetchFromGitHub {
        owner = "n64decomp";
        repo = "qemu-irix";
        rev = "6d7d1fd";
        sha256 = "1lrd52lmwdv3l3ka071gr1q81zy67g91bh2qk2aqaxrm7prxiaa2";
      };
      nativeBuildInputs = [
        python2 perl pkg-config flex bison autoconf texinfo
      ];
      buildInputs = [
        zlib glib pixman libuuid
      ];
      configureFlags = [ "--target-list=irix-linux-user,irixn32-linux-user,irix64-linux-user,solaris-linux-user" ];
    };
  };
in mkShell {
  buildInputs = [
    gnumake python3
  ] ++ (with myPkgs; [
    binutils_mips_linux_gnu qemu_irix
  ]);
  shellHook = ''
    export ORIG_COMPILER=1
  '';
}

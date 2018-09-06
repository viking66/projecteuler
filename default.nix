{ mkDerivation, base, containers, memoize, primes, split, stdenv }:
mkDerivation {
  pname = "projecteuler";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base containers memoize primes split
  ];
  license = stdenv.lib.licenses.bsd3;
}

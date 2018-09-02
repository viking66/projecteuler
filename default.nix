{ mkDerivation, base, containers, primes, split, stdenv }:
mkDerivation {
  pname = "projecteuler";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base containers primes split ];
  license = stdenv.lib.licenses.bsd3;
}

{ cabal, Cabal, hledgerLib, mtl, time }:

cabal.mkDerivation (self: {
  pname = "hledger-interest";
  version = "1.4.3";
  sha256 = "1nj50zi4p6rs0nl4656rr0vkbh7kdi49z1l53nypfqs3rmjgicsn";
  isLibrary = false;
  isExecutable = true;
  buildDepends = [ Cabal hledgerLib mtl time ];
  meta = {
    homepage = "http://github.com/peti/hledger-interest";
    description = "computes interest for a given account";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [
      self.stdenv.lib.maintainers.andres
      self.stdenv.lib.maintainers.simons
    ];
  };
})
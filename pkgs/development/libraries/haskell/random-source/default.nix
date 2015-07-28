{ cabal, flexibleDefaults, mersenneRandomPure64, mtl, mwcRandom
, random, stateref, syb, thExtras
}:

cabal.mkDerivation (self: {
  pname = "random-source";
  version = "0.3.0.6";
  sha256 = "0wsv41kpswqml04ym5bq2nan4i637f7h3fmvda2zy506xwxfrpzk";
  buildDepends = [
    flexibleDefaults mersenneRandomPure64 mtl mwcRandom random stateref
    syb thExtras
  ];
  meta = {
    homepage = "https://github.com/mokus0/random-fu";
    description = "Generic basis for random number generators";
    license = self.stdenv.lib.licenses.publicDomain;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
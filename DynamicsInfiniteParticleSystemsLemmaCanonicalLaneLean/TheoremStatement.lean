import DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

structure TheoremBoundary where
  claimBoundary : String
deriving Repr, DecidableEq

def sourceRepository : String := "dynamics-infinite-particle-systems-lemma-canonical-lane"
def sourceDescription : String := "Dynamics Infinite Particle Systems Lemma"
def sourceTheoremBoundary : TheoremBoundary := { claimBoundary := "Classical infinite particle system closure remains open" }

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  certificateLane := "thermodynamic_limit_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate"
}

end DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
end HautevilleHouse
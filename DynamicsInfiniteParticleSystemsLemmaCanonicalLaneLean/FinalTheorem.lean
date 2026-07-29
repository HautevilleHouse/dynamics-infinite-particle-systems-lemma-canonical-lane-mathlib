import DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

def ConstrainedInfiniteParticleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_infinite_particle_closure (A : AdmissibleClass) :
    ConstrainedInfiniteParticleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
end HautevilleHouse
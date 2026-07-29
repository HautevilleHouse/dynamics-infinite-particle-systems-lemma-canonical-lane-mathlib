import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure ParticleConfiguration where
  positions : ℕ → ℝ
  velocities : ℕ → ℝ
  finiteEnergy : (∑' i, velocities i ^ 2) < ∞

structure LocalConfiguration where
  positions : Finset ℕ → ℝ
  velocities : Finset ℕ → ℝ

structure InteractionPotential where
  pairPotential : ℝ → ℝ
  decayRate : ℝ
  decayPositive : decayRate > 0

structure InfiniteParticleSystem where
  config : ParticleConfiguration
  potential : InteractionPotential
  hamiltonian : ℝ

end HautevilleHouse
end DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
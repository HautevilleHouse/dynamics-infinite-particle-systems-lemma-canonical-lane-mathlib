import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure ParticleConfiguration where
  positions : Nat → ℝ
  velocities : Nat → ℝ
  labels : Nat → ℕ

structure InfiniteParticleState where
  config : ParticleConfiguration
  interactionRadius : ℝ
  interactionPotential : ℝ → ℝ

structure ParticleSystemConfig where
  state : InfiniteParticleState
  hasFiniteLocalEnergy : Prop
  hasTameInteraction : Prop
  localEnergyFinite : hasFiniteLocalEnergy
  interactionTame : hasTameInteraction

def defaultParticleState : InfiniteParticleState := {
  config := {
    positions := fun _ => 0.0,
    velocities := fun _ => 0.0,
    labels := fun _ => 0
  },
  interactionRadius := 1.0,
  interactionPotential := fun r => if r ≤ 1.0 then 1.0 else 0.0
}

def defaultSystemConfig : ParticleSystemConfig := {
  state := defaultParticleState,
  hasFiniteLocalEnergy := True,
  hasTameInteraction := True,
  localEnergyFinite := rfl,
  interactionTame := rfl
}

end DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
end HautevilleHouse
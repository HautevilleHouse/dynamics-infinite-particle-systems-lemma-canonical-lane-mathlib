import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure ParticleConfiguration where
  positions : Set ℝ
  velocities : ℝ → ℝ
  finiteEnergy : Prop

structure ParticleDynamics where
  config : ParticleConfiguration
  interactionPotential : ℝ → ℝ → ℝ
  hamiltonian : Prop

def zeroParticleConfig : ParticleConfiguration := {
  positions := ∅
  velocities := fun _ => 0
  finiteEnergy := True
}

def zeroParticleDynamics : ParticleDynamics := {
  config := zeroParticleConfig
  interactionPotential := fun _ _ => 0
  hamiltonian := True
}

def ConfigurationClosed (C : ParticleConfiguration) : Prop :=
  C.finiteEnergy

def DynamicsClosed (D : ParticleDynamics) : Prop :=
  ConfigurationClosed D.config ∧ D.hamiltonian

theorem zero_configuration_closed : ConfigurationClosed zeroParticleConfig := by
  exact True.intro

theorem zero_dynamics_closed : DynamicsClosed zeroParticleDynamics := by
  exact And.intro zero_configuration_closed True.intro

end HautevilleHouse.DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
end HautevilleHouse
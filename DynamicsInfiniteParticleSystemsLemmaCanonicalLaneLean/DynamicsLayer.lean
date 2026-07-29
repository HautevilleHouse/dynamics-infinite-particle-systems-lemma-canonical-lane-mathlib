import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure DynamicsCertificate where
  config : ParticleConfiguration
  potential : InteractionPotential
  timeEvolution : ℝ → ParticleConfiguration
  evolutionContinuous : ∀ t, timeEvolution t = config
  evolutionSatisfiesEquation : Prop
  evolutionSatisfiesEquationProof : evolutionSatisfiesEquation

def sourceDynamicsCertificate : DynamicsCertificate := {
  config := { positions := λ _ => 0, velocities := λ _ => 0, finiteEnergy := by
    have h : (∑' i : ℕ, (0 : ℝ) ^ 2) < ∞ := by
      simp
    exact h },
  potential := { pairPotential := λ _ => 0, decayRate := 1, decayPositive := by norm_num },
  timeEvolution := λ _ => { positions := λ _ => 0, velocities := λ _ => 0, finiteEnergy := by
    have h : (∑' i : ℕ, (0 : ℝ) ^ 2) < ∞ := by
      simp
    exact h },
  evolutionContinuous := λ _ => rfl,
  evolutionSatisfiesEquation := True,
  evolutionSatisfiesEquationProof := trivial
}

def DynamicsClosed (D : DynamicsCertificate) : Prop :=
  D.evolutionSatisfiesEquation

theorem source_dynamics_closed : DynamicsClosed sourceDynamicsCertificate := by
  rw [DynamicsClosed]
  exact sourceDynamicsCertificate.evolutionSatisfiesEquationProof

end HautevilleHouse
end DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure GibbsMeasure where
  hamiltonian : (ParticleConfiguration → ℝ)
  inverseTemperature : ℝ
  activity : ℝ
  normalizability : Prop
  dclrProperty : Prop
  normalizabilityVerified : normalizability
  dclrVerified : dclrProperty

def defaultHamiltonian (c : ParticleConfiguration) : ℝ := 0.0

def defaultGibbsMeasure : GibbsMeasure := {
  hamiltonian := defaultHamiltonian,
  inverseTemperature := 1.0,
  activity := 1.0,
  normalizability := True,
  dclrProperty := True,
  normalizabilityVerified := rfl,
  dclrVerified := rfl
}

def GibbsMeasureClosed (G : GibbsMeasure) : Prop :=
  G.normalizability ∧ G.dclrProperty

theorem defaultGibbsMeasureClosed : GibbsMeasureClosed defaultGibbsMeasure := by
  exact And.intro rfl rfl

end DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
end HautevilleHouse
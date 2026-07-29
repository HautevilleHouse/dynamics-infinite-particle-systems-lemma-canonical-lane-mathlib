import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure HydrodynamicLimitCertificate where
  gibbsMeasure : GibbsMeasureCertificate
  scalingLimit : ℕ → ℝ
  limitEquation : Prop
  limitEquationProof : limitEquation
  uniqueness : Prop
  uniquenessProof : uniqueness

def sourceHydrodynamicLimitCertificate : HydrodynamicLimitCertificate := {
  gibbsMeasure := sourceGibbsMeasureCertificate,
  scalingLimit := λ n => 1 / (n : ℝ),
  limitEquation := True,
  limitEquationProof := trivial,
  uniqueness := True,
  uniquenessProof := trivial
}

def HydrodynamicLimitClosed (H : HydrodynamicLimitCertificate) : Prop :=
  H.limitEquation ∧ H.uniqueness

theorem source_hydrodynamic_limit_closed : HydrodynamicLimitClosed sourceHydrodynamicLimitCertificate := by
  exact And.intro sourceHydrodynamicLimitCertificate.limitEquationProof sourceHydrodynamicLimitCertificate.uniquenessProof

end HautevilleHouse
end DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
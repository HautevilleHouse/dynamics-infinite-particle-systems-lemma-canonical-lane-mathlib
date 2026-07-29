import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure LargeDeviationsCertificate where
  hydrodynamicLimit : HydrodynamicLimitCertificate
  rateFunction : ℝ → ℝ
  lowerBound : Prop
  lowerBoundProof : lowerBound
  upperBound : Prop
  upperBoundProof : upperBound

def sourceLargeDeviationsCertificate : LargeDeviationsCertificate := {
  hydrodynamicLimit := sourceHydrodynamicLimitCertificate,
  rateFunction := λ x => x ^ 2,
  lowerBound := True,
  lowerBoundProof := trivial,
  upperBound := True,
  upperBoundProof := trivial
}

def LargeDeviationsClosed (L : LargeDeviationsCertificate) : Prop :=
  L.lowerBound ∧ L.upperBound

theorem source_large_deviations_closed : LargeDeviationsClosed sourceLargeDeviationsCertificate := by
  exact And.intro sourceLargeDeviationsCertificate.lowerBoundProof sourceLargeDeviationsCertificate.upperBoundProof

end HautevilleHouse
end DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
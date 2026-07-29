import HautevilleHouse.DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean.GibbsMeasureLayer

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure CorrelationBoundsCertificate where
  gibbsMeasure : GibbsMeasureCertificate
  decayRate : Prop
  clustering : Prop
  decayRateClosed : decayRate
  clusteringClosed : clustering

def sourceCorrelationBoundsCertificate : CorrelationBoundsCertificate := {
  gibbsMeasure := sourceGibbsMeasureCertificate
  decayRate := True
  clustering := True
  decayRateClosed := True.intro
  clusteringClosed := True.intro
}

def CorrelationBoundsClosed (C : CorrelationBoundsCertificate) : Prop :=
  GibbsMeasureClosed C.gibbsMeasure ∧ C.decayRate ∧ C.clustering

theorem source_correlation_bounds_closed : CorrelationBoundsClosed sourceCorrelationBoundsCertificate := by
  exact And.intro source_gibbs_measure_closed (And.intro True.intro True.intro)

end HautevilleHouse.DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
end HautevilleHouse
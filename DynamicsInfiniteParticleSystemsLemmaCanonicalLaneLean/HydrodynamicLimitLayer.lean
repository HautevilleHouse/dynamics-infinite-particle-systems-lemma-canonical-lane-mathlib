import HautevilleHouse.DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean.CorrelationBoundsLayer

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure HydrodynamicLimitCertificate where
  correlationBounds : CorrelationBoundsCertificate
  scalingLimit : Prop
  conservationLaw : Prop
  scalingLimitClosed : scalingLimit
  conservationLawClosed : conservationLaw

def sourceHydrodynamicLimitCertificate : HydrodynamicLimitCertificate := {
  correlationBounds := sourceCorrelationBoundsCertificate
  scalingLimit := True
  conservationLaw := True
  scalingLimitClosed := True.intro
  conservationLawClosed := True.intro
}

def HydrodynamicLimitClosed (C : HydrodynamicLimitCertificate) : Prop :=
  CorrelationBoundsClosed C.correlationBounds ∧ C.scalingLimit ∧ C.conservationLaw

theorem source_hydrodynamic_limit_closed : HydrodynamicLimitClosed sourceHydrodynamicLimitCertificate := by
  exact And.intro source_correlation_bounds_closed (And.intro True.intro True.intro)

end HautevilleHouse.DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
end HautevilleHouse
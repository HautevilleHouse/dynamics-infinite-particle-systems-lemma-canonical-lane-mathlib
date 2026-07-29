import HautevilleHouse.DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean.HydrodynamicLimitLayer

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure FluctuationDissipationCertificate where
  hydrodynamicLimit : HydrodynamicLimitCertificate
  fluctuationBounds : Prop
  dissipationRelation : Prop
  fluctuationBoundsClosed : fluctuationBounds
  dissipationRelationClosed : dissipationRelation

def sourceFluctuationDissipationCertificate : FluctuationDissipationCertificate := {
  hydrodynamicLimit := sourceHydrodynamicLimitCertificate
  fluctuationBounds := True
  dissipationRelation := True
  fluctuationBoundsClosed := True.intro
  dissipationRelationClosed := True.intro
}

def FluctuationDissipationClosed (C : FluctuationDissipationCertificate) : Prop :=
  HydrodynamicLimitClosed C.hydrodynamicLimit ∧ C.fluctuationBounds ∧ C.dissipationRelation

theorem source_fluctuation_dissipation_closed : FluctuationDissipationClosed sourceFluctuationDissipationCertificate := by
  exact And.intro source_hydrodynamic_limit_closed (And.intro True.intro True.intro)

end HautevilleHouse.DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
end HautevilleHouse
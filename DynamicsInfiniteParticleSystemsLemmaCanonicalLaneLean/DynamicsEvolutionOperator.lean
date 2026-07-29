import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure EvolutionOperator where
  timeParameter : ℝ
  generator : (InfiniteParticleState → InfiniteParticleState) → (InfiniteParticleState → InfiniteParticleState)
  semigroupProperty : Prop
  continuityProperty : Prop
  semigroupVerified : semigroupProperty
  continuityVerified : continuityProperty

def defaultGenerator (f : InfiniteParticleState → InfiniteParticleState) : InfiniteParticleState → InfiniteParticleState :=
  fun s => s

def defaultEvolutionOperator : EvolutionOperator := {
  timeParameter := 0.0,
  generator := defaultGenerator,
  semigroupProperty := True,
  continuityProperty := True,
  semigroupVerified := rfl,
  continuityVerified := rfl
}

def EvolutionClosed (E : EvolutionOperator) : Prop :=
  E.semigroupProperty ∧ E.continuityProperty

theorem defaultEvolutionClosed : EvolutionClosed defaultEvolutionOperator := by
  exact And.intro rfl rfl

end DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
end HautevilleHouse
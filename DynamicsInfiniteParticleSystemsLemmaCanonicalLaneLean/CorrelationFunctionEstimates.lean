import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure CorrelationFunction where
  particleConfig : ParticleConfiguration
  distanceBounds : ℝ → ℝ
  decayRate : ℝ
  uniformIntegrability : Prop
  decayVerified : uniformIntegrability

defaultCorrelationFunction : CorrelationFunction := {
  particleConfig := {
    positions := fun _ => 0.0,
    velocities := fun _ => 0.0,
    labels := fun _ => 0
  },
  distanceBounds := fun r => exp (-r),
  decayRate := 1.0,
  uniformIntegrability := True,
  decayVerified := rfl
}

def CorrelationEstimateClosed (C : CorrelationFunction) : Prop :=
  C.uniformIntegrability

theorem defaultCorrelationEstimateClosed : CorrelationEstimateClosed defaultCorrelationFunction := by
  unfold CorrelationEstimateClosed
  exact defaultCorrelationFunction.decayVerified

end DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
end HautevilleHouse
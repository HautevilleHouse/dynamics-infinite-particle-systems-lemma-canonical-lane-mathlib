import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean.CorrelationFunctionEstimates
import HautevilleHouse.DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean.DynamicsEvolutionOperator
import HautevilleHouse.DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean.GibbsMeasureLayer

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure InfiniteParticleCertificate where
  systemConfig : ParticleSystemConfig
  correlationEstimate : CorrelationFunction
  evolutionOperator : EvolutionOperator
  gibbsMeasure : GibbsMeasure
  correlationClosed : CorrelationEstimateClosed correlationEstimate
  evolutionClosed : EvolutionClosed evolutionOperator
  gibbsClosed : GibbsMeasureClosed gibbsMeasure

def defaultCertificate : InfiniteParticleCertificate := {
  systemConfig := defaultSystemConfig,
  correlationEstimate := defaultCorrelationFunction,
  evolutionOperator := defaultEvolutionOperator,
  gibbsMeasure := defaultGibbsMeasure,
  correlationClosed := defaultCorrelationEstimateClosed,
  evolutionClosed := defaultEvolutionClosed,
  gibbsClosed := defaultGibbsMeasureClosed
}

def InfiniteParticleCertificateClosed (C : InfiniteParticleCertificate) : Prop :=
  CorrelationEstimateClosed C.correlationEstimate ∧
  EvolutionClosed C.evolutionOperator ∧
  GibbsMeasureClosed C.gibbsMeasure

theorem defaultCertificateClosed : InfiniteParticleCertificateClosed defaultCertificate := by
  exact And.intro defaultCertificate.correlationClosed
    (And.intro defaultCertificate.evolutionClosed defaultCertificate.gibbsClosed)

end DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
end HautevilleHouse
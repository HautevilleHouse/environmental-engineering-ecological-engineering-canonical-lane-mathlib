import EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean.PollutantTransportPDE

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

structure ResilienceEntropyPackage {A : AdmissibleClass} (P : AdvectionDiffusionPackage A) where
  disturbanceRegime : Type u
  recoveryRate : Type v
  entropyFunctional : Type w
  entropyMonotonicity : Prop
  stabilityMargin : Prop
  inputFromTransport : P.transportEquation

structure ResilienceEntropyEvidence {A : AdmissibleClass} {P : AdvectionDiffusionPackage A} (E : ResilienceEntropyPackage P) where
  entropyMonotonicityClosed : E.entropyMonotonicity
  stabilityMarginClosed : E.stabilityMargin

def ResilienceEntropyClosed {A : AdmissibleClass} {P : AdvectionDiffusionPackage A} (E : ResilienceEntropyPackage P) : Prop :=
  E.entropyMonotonicity ∧ E.stabilityMargin

theorem resilience_entropy_closed_from_evidence {A : AdmissibleClass} {P : AdvectionDiffusionPackage A} (E : ResilienceEntropyPackage P) (Ev : ResilienceEntropyEvidence E) : ResilienceEntropyClosed E :=
  And.intro Ev.entropyMonotonicityClosed Ev.stabilityMarginClosed

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
import EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean.EcosystemResilienceEntropy

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

structure NoncollapsingBiodiversityPackage {A : AdmissibleClass} {P : AdvectionDiffusionPackage A} {E : ResilienceEntropyPackage P} where
  scaleInvariantBiodiversityBound : Prop
  disturbanceScaleControl : Prop
  recoveryLimitNoncollapsed : A.object.biodiversityIndex

structure NoncollapsingBiodiversityEvidence {A : AdmissibleClass} {P : AdvectionDiffusionPackage A} {E : ResilienceEntropyPackage P} (N : NoncollapsingBiodiversityPackage P E) where
  scaleInvariantBiodiversityBoundClosed : N.scaleInvariantBiodiversityBound
  disturbanceScaleControlClosed : N.disturbanceScaleControl
  recoveryLimitNoncollapsedClosed : N.recoveryLimitNoncollapsed

def NoncollapsingBiodiversityClosed {A : AdmissibleClass} {P : AdvectionDiffusionPackage A} {E : ResilienceEntropyPackage P} (N : NoncollapsingBiodiversityPackage P E) : Prop :=
  N.scaleInvariantBiodiversityBound ∧ N.disturbanceScaleControl ∧ N.recoveryLimitNoncollapsed

theorem noncollapsing_biodiversity_closed_from_evidence {A : AdmissibleClass} {P : AdvectionDiffusionPackage A} {E : ResilienceEntropyPackage P} (N : NoncollapsingBiodiversityPackage P E) (Ev : NoncollapsingBiodiversityEvidence N) : NoncollapsingBiodiversityClosed N :=
  And.intro Ev.scaleInvariantBiodiversityBoundClosed (And.intro Ev.disturbanceScaleControlClosed Ev.recoveryLimitNoncollapsedClosed)

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
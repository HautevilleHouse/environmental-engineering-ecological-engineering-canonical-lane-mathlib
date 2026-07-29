import EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean.EcosystemResilienceEntropy

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

structure RestorationSurgeryPackage {A : AdmissibleClass} {P : AdvectionDiffusionPackage A} {E : ResilienceEntropyPackage P} where
  interventionTimesDiscrete : Prop
  remediationRegionAdmissible : Prop
  postRestorationEcosystemState : Prop
  restorativePotentialPreserved : E.stabilityMargin
  topologyChangeAccounted : Prop

structure RestorationSurgeryEvidence {A : AdmissibleClass} {P : AdvectionDiffusionPackage A} {E : ResilienceEntropyPackage P} (U : RestorationSurgeryPackage P E) where
  interventionTimesDiscreteClosed : U.interventionTimesDiscrete
  remediationRegionAdmissibleClosed : U.remediationRegionAdmissible
  postRestorationEcosystemStateClosed : U.postRestorationEcosystemState
  restorativePotentialPreservedClosed : U.restorativePotentialPreserved
  topologyChangeAccountedClosed : U.topologyChangeAccounted

def RestorationSurgeryClosed {A : AdmissibleClass} {P : AdvectionDiffusionPackage A} {E : ResilienceEntropyPackage P} (U : RestorationSurgeryPackage P E) : Prop :=
  U.interventionTimesDiscrete ∧ U.remediationRegionAdmissible ∧ U.postRestorationEcosystemState ∧ U.restorativePotentialPreserved ∧ U.topologyChangeAccounted

theorem restoration_surgery_closed_from_evidence {A : AdmissibleClass} {P : AdvectionDiffusionPackage A} {E : ResilienceEntropyPackage P} (U : RestorationSurgeryPackage P E) (Ev : RestorationSurgeryEvidence U) : RestorationSurgeryClosed U :=
  And.intro Ev.interventionTimesDiscreteClosed (And.intro Ev.remediationRegionAdmissibleClosed (And.intro Ev.postRestorationEcosystemStateClosed (And.intro Ev.restorativePotentialPreservedClosed Ev.topologyChangeAccountedClosed)))

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
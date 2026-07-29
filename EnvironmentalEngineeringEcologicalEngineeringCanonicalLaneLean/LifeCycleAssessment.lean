import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

structure LifeCycleAssessmentPackage where
  rawMaterialExtraction : Prop
  manufacturing : Prop
  usePhase : Prop
  endOfLife : Prop
  netEnvironmentalImpact : Prop

structure LifeCycleAssessmentEvidence (L : LifeCycleAssessmentPackage) where
  rawMaterialExtractionClosed : L.rawMaterialExtraction
  manufacturingClosed : L.manufacturing
  usePhaseClosed : L.usePhase
  endOfLifeClosed : L.endOfLife
  netEnvironmentalImpactClosed : L.netEnvironmentalImpact

def LifeCycleAssessmentClosed (L : LifeCycleAssessmentPackage) : Prop :=
  L.rawMaterialExtraction ∧ L.manufacturing ∧ L.usePhase ∧ L.endOfLife ∧ L.netEnvironmentalImpact

theorem life_cycle_assessment_closed_from_evidence (L : LifeCycleAssessmentPackage) (Ev : LifeCycleAssessmentEvidence L) :
    LifeCycleAssessmentClosed L := by
  exact And.intro Ev.rawMaterialExtractionClosed
    (And.intro Ev.manufacturingClosed
      (And.intro Ev.usePhaseClosed
        (And.intro Ev.endOfLifeClosed Ev.netEnvironmentalImpactClosed)))

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
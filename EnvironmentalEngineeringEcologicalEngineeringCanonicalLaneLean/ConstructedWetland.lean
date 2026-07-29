import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

structure ConstructedWetlandPackage where
  hydraulicLoading : Prop
  pollutantRemovalEfficiency : Prop
  vegetationPhytoremediation : Prop
  seasonalPerformance : Prop

structure ConstructedWetlandEvidence (C : ConstructedWetlandPackage) where
  hydraulicLoadingClosed : C.hydraulicLoading
  pollutantRemovalEfficiencyClosed : C.pollutantRemovalEfficiency
  vegetationPhytoremediationClosed : C.vegetationPhytoremediation
  seasonalPerformanceClosed : C.seasonalPerformance

def ConstructedWetlandClosed (C : ConstructedWetlandPackage) : Prop :=
  C.hydraulicLoading ∧ C.pollutantRemovalEfficiency ∧
  C.vegetationPhytoremediation ∧ C.seasonalPerformance

theorem constructed_wetland_closed_from_evidence (C : ConstructedWetlandPackage) (Ev : ConstructedWetlandEvidence C) :
    ConstructedWetlandClosed C := by
  exact And.intro Ev.hydraulicLoadingClosed
    (And.intro Ev.pollutantRemovalEfficiencyClosed
      (And.intro Ev.vegetationPhytoremediationClosed Ev.seasonalPerformanceClosed))

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
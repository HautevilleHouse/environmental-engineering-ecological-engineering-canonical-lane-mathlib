import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

structure RestorationEcology where
  disturbanceRegime : Prop
  successionTrajectory : Prop
  invasiveSpeciesControl : Prop
  habitatConnectivity : Prop
  ecosystemServices : Prop

structure RestorationEcologyEvidence (R : RestorationEcology) where
  disturbanceRegimeClosed : R.disturbanceRegime
  successionTrajectoryClosed : R.successionTrajectory
  invasiveSpeciesControlClosed : R.invasiveSpeciesControl
  habitatConnectivityClosed : R.habitatConnectivity
  ecosystemServicesClosed : R.ecosystemServices

def RestorationEcologyClosed (R : RestorationEcology) : Prop :=
  R.disturbanceRegime ∧ R.successionTrajectory ∧ R.invasiveSpeciesControl ∧ R.habitatConnectivity ∧ R.ecosystemServices

theorem restoration_ecology_closed_from_evidence (R : RestorationEcology) (Ev : RestorationEcologyEvidence R) :
    RestorationEcologyClosed R := by
  exact And.intro Ev.disturbanceRegimeClosed
    (And.intro Ev.successionTrajectoryClosed
      (And.intro Ev.invasiveSpeciesControlClosed (And.intro Ev.habitatConnectivityClosed Ev.ecosystemServicesClosed)))

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
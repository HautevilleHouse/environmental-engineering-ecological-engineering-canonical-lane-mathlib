import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

structure EcosystemModel where
  species : Type u
  interactions : Type v
  foodWeb : Prop
  nutrientCycling : Prop
  biodiversityStability : Prop

structure EcosystemModelEvidence (E : EcosystemModel) where
  foodWebClosed : E.foodWeb
  nutrientCyclingClosed : E.nutrientCycling
  biodiversityStabilityClosed : E.biodiversityStability

def EcosystemModelClosed (E : EcosystemModel) : Prop :=
  E.foodWeb ∧ E.nutrientCycling ∧ E.biodiversityStability

theorem ecosystem_model_closed_from_evidence (E : EcosystemModel) (Ev : EcosystemModelEvidence E) :
    EcosystemModelClosed E := by
  exact And.intro Ev.foodWebClosed (And.intro Ev.nutrientCyclingClosed Ev.biodiversityStabilityClosed)

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
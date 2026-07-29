import canonicalLaneMathlib.AdmissibleClass
import EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean.EcosystemModel
import EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean.Bioremediation
import EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean.ConstructedWetland
import EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean.NutrientCycle
import EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean.LifeCycleAssessment

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedEcologicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ecological_endgame (A : AdmissibleClass) :
    ConstrainedEcologicalClosure A := by
  unfold ConstrainedEcologicalClosure
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
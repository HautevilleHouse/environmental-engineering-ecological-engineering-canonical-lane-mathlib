import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

structure EcosystemObject where
  carrier : Type
  topology : TopologicalSpace carrier
  biodiversityIndex : Prop
  resilienceMeasure : Prop
  ecosystemServiceCapacity : Prop

structure EcologicalAdmittedObject where
  space : EcosystemObject
  ecosystemStability : Prop
  pollutantLoadingControlled : Prop
  restorativePotential : Prop
  conclusion : ecosystemStability ∧ restorativePotential

structure AdmissibleClass where
  object : EcologicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.ecosystemStability ∧ A.object.restorativePotential) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
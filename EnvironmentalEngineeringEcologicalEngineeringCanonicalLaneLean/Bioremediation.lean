import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

structure BioremediationPackage where
  contaminant : Type u
  microbialDegradationRate : Prop
  halfLifeConstrained : Prop
  byproductNonToxic : Prop

structure BioremediationEvidence (B : BioremediationPackage) where
  microbialDegradationRateClosed : B.microbialDegradationRate
  halfLifeConstrainedClosed : B.halfLifeConstrained
  byproductNonToxicClosed : B.byproductNonToxic

def BioremediationClosed (B : BioremediationPackage) : Prop :=
  B.microbialDegradationRate ∧ B.halfLifeConstrained ∧ B.byproductNonToxic

theorem bioremediation_closed_from_evidence (B : BioremediationPackage) (Ev : BioremediationEvidence B) :
    BioremediationClosed B := by
  exact And.intro Ev.microbialDegradationRateClosed
    (And.intro Ev.halfLifeConstrainedClosed Ev.byproductNonToxicClosed)

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
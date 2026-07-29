import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

structure EcologicalNetwork where
  trophicLevels : Prop
  energyFlow : Prop
  biomagnification : Prop
  keystoneSpecies : Prop

structure EcologicalNetworkEvidence (N : EcologicalNetwork) where
  trophicLevelsClosed : N.trophicLevels
  energyFlowClosed : N.energyFlow
  biomagnificationClosed : N.biomagnification
  keystoneSpeciesClosed : N.keystoneSpecies

def EcologicalNetworkClosed (N : EcologicalNetwork) : Prop :=
  N.trophicLevels ∧ N.energyFlow ∧ N.biomagnification ∧ N.keystoneSpecies

theorem ecological_network_closed_from_evidence (N : EcologicalNetwork) (Ev : EcologicalNetworkEvidence N) :
    EcologicalNetworkClosed N := by
  exact And.intro Ev.trophicLevelsClosed (And.intro Ev.energyFlowClosed (And.intro Ev.biomagnificationClosed Ev.keystoneSpeciesClosed))

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
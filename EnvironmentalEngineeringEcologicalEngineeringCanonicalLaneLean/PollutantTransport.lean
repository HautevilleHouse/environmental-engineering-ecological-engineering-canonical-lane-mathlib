import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

structure PollutantTransport where
  advectionDiffusion : Prop
  reactionKinetics : Prop
  dispersionTensor : Prop
  sourceTerm : Prop
  boundaryConditions : Prop

structure PollutantTransportEvidence (P : PollutantTransport) where
  advectionDiffusionClosed : P.advectionDiffusion
  reactionKineticsClosed : P.reactionKinetics
  dispersionTensorClosed : P.dispersionTensor
  sourceTermClosed : P.sourceTerm
  boundaryConditionsClosed : P.boundaryConditions

def PollutantTransportClosed (P : PollutantTransport) : Prop :=
  P.advectionDiffusion ∧ P.reactionKinetics ∧ P.dispersionTensor ∧ P.sourceTerm ∧ P.boundaryConditions

theorem pollutant_transport_closed_from_evidence (P : PollutantTransport) (Ev : PollutantTransportEvidence P) :
    PollutantTransportClosed P := by
  exact And.intro Ev.advectionDiffusionClosed
    (And.intro Ev.reactionKineticsClosed
      (And.intro Ev.dispersionTensorClosed
        (And.intro Ev.sourceTermClosed Ev.boundaryConditionsClosed)))

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
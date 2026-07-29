import EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean.EcologicalEngineerAdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

structure AdvectionDiffusionPackage (A : AdmissibleClass) where
  dispersionCoefficient : Type u
  velocityField : Type v
  sourceTerm : Type w
  initialCondition : Prop
  boundaryCondition : Prop
  transportEquation : Prop
  pollutantLoadConstraint : A.object.pollutantLoadingControlled

structure AdvectionDiffusionEvidence {A : AdmissibleClass} (P : AdvectionDiffusionPackage A) where
  initialConditionClosed : P.initialCondition
  boundaryConditionClosed : P.boundaryCondition
  transportEquationClosed : P.transportEquation
  pollutantLoadConstraintClosed : P.pollutantLoadConstraint

def AdvectionDiffusionClosed {A : AdmissibleClass} (P : AdvectionDiffusionPackage A) : Prop :=
  P.initialCondition ∧ P.boundaryCondition ∧ P.transportEquation ∧ P.pollutantLoadConstraint

theorem advection_diffusion_closed_from_evidence {A : AdmissibleClass} (P : AdvectionDiffusionPackage A) (E : AdvectionDiffusionEvidence P) : AdvectionDiffusionClosed P :=
  And.intro E.initialConditionClosed (And.intro E.boundaryConditionClosed (And.intro E.transportEquationClosed E.pollutantLoadConstraintClosed))

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
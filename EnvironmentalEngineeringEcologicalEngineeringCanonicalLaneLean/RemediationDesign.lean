import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean

structure RemediationDesignPackage where
  inSituTreatment : Prop
  exSituTreatment : Prop
  monitoredNaturalAttenuation : Prop
  phytoremediation : Prop

structure RemediationDesignEvidence (R : RemediationDesignPackage) where
  inSituTreatmentClosed : R.inSituTreatment
  exSituTreatmentClosed : R.exSituTreatment
  monitoredNaturalAttenuationClosed : R.monitoredNaturalAttenuation
  phytoremediationClosed : R.phytoremediation

def RemediationDesignClosed (R : RemediationDesignPackage) : Prop :=
  R.inSituTreatment ∧ R.exSituTreatment ∧ R.monitoredNaturalAttenuation ∧ R.phytoremediation

theorem remediation_design_closed_from_evidence (R : RemediationDesignPackage) (Ev : RemediationDesignEvidence R) : RemediationDesignClosed R := by
  exact And.intro Ev.inSituTreatmentClosed (And.intro Ev.exSituTreatmentClosed (And.intro Ev.monitoredNaturalAttenuationClosed Ev.phytoremediationClosed))

end EnvironmentalEngineeringEcologicalEngineeringCanonicalLaneLean
end HautevilleHouse
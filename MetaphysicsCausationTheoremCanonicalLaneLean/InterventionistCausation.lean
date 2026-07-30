import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure InterventionistCausationPackage where
  interventionVariable : Type u
  targetVariable : Type v
  probabilityDistribution : Prop
  doOperatorDefined : Prop

structure InterventionistCausationEvidence (I : InterventionistCausationPackage) where
  probabilityDistributionClosed : I.probabilityDistribution
  doOperatorDefinedClosed : I.doOperatorDefined

def InterventionistCausationClosed (I : InterventionistCausationPackage) : Prop :=
  I.probabilityDistribution ∧ I.doOperatorDefined

theorem interventionist_causation_closed_from_evidence (I : InterventionistCausationPackage) (E : InterventionistCausationEvidence I) :
    InterventionistCausationClosed I := by
  exact And.intro E.probabilityDistributionClosed E.doOperatorDefinedClosed

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure CausalProbabilityPackage where
  conditionalIndependence : Prop
  probabilitySpaceType : Type u
  doCalculus : Prop
  identifiabilityCriterion : Prop
  backDoorCriterion : Prop

structure CausalProbabilityEvidence (P : CausalProbabilityPackage) where
  conditionalIndependenceClosed : P.conditionalIndependence
  doCalculusClosed : P.doCalculus
  identifiabilityCriterionClosed : P.identifiabilityCriterion
  backDoorCriterionClosed : P.backDoorCriterion

def CausalProbabilityClosed (P : CausalProbabilityPackage) : Prop :=
  P.conditionalIndependence ∧ P.doCalculus ∧
  P.identifiabilityCriterion ∧ P.backDoorCriterion

theorem causal_probability_closed_from_evidence (P : CausalProbabilityPackage)
    (E : CausalProbabilityEvidence P) : CausalProbabilityClosed P := by
  exact And.intro E.conditionalIndependenceClosed
    (And.intro E.doCalculusClosed
      (And.intro E.identifiabilityCriterionClosed E.backDoorCriterionClosed))

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
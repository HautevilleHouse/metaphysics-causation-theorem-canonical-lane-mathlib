import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure ProbabilisticCausationPackage where
  probabilitySpace : Type u
  causeEvent : Type v
  effectEvent : Type w
  probabilityRaised : Prop
  conditionalProbabilityDefined : Prop
  screeningOff : Prop
  confoundingControlled : Prop

structure ProbabilisticCausationEvidence (P : ProbabilisticCausationPackage) where
  probabilityRaisedClosed : P.probabilityRaised
  conditionalProbabilityDefinedClosed : P.conditionalProbabilityDefined
  screeningOffClosed : P.screeningOff
  confoundingControlledClosed : P.confoundingControlled

def ProbabilisticCausationClosed (P : ProbabilisticCausationPackage) : Prop :=
  P.probabilityRaised ∧ P.conditionalProbabilityDefined ∧ P.screeningOff ∧ P.confoundingControlled

theorem probabilistic_causation_closed_from_evidence (P : ProbabilisticCausationPackage) (E : ProbabilisticCausationEvidence P) : ProbabilisticCausationClosed P := by
  exact And.intro E.probabilityRaisedClosed (And.intro E.conditionalProbabilityDefinedClosed (And.intro E.screeningOffClosed E.confoundingControlledClosed))

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
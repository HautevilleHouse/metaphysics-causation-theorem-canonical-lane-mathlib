import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure CausalCounterfactualStructure where
  causeObject : Type u
  effectObject : Type v
  counterfactualDependence : Prop
  necessaryConnection : Prop
  sufficientConnection : Prop
  causalDirection : Prop
  regularityAccount : Prop

structure CausalCounterfactualEvidence (C : CausalCounterfactualStructure) where
  counterfactualDependenceClosed : C.counterfactualDependence
  necessaryConnectionClosed : C.necessaryConnection
  sufficientConnectionClosed : C.sufficientConnection
  causalDirectionClosed : C.causalDirection
  regularityAccountClosed : C.regularityAccount

def CausalCounterfactualClosed (C : CausalCounterfactualStructure) : Prop :=
  C.counterfactualDependence ∧ C.necessaryConnection ∧ C.sufficientConnection ∧ C.causalDirection ∧ C.regularityAccount

theorem causal_counterfactual_closed_from_evidence (C : CausalCounterfactualStructure) (E : CausalCounterfactualEvidence C) : CausalCounterfactualClosed C := by
  exact And.intro E.counterfactualDependenceClosed (And.intro E.necessaryConnectionClosed (And.intro E.sufficientConnectionClosed (And.intro E.causalDirectionClosed E.regularityAccountClosed)))

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
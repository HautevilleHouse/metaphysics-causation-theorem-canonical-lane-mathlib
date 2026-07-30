import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure CounterfactualLogicPackage where
  possibleWorlds : Type u
  accessibilityRelation : Prop
  antecedentDomain : Prop
  selectionFunctionDefined : Prop

structure CounterfactualLogicEvidence (C : CounterfactualLogicPackage) where
  accessibilityRelationClosed : C.accessibilityRelation
  antecedentDomainClosed : C.antecedentDomain
  selectionFunctionDefinedClosed : C.selectionFunctionDefined

def CounterfactualLogicClosed (C : CounterfactualLogicPackage) : Prop :=
  C.accessibilityRelation ∧ C.antecedentDomain ∧ C.selectionFunctionDefined

theorem counterfactual_logic_closed_from_evidence (C : CounterfactualLogicPackage) (E : CounterfactualLogicEvidence C) :
    CounterfactualLogicClosed C := by
  exact And.intro E.accessibilityRelationClosed
    (And.intro E.antecedentDomainClosed E.selectionFunctionDefinedClosed)

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
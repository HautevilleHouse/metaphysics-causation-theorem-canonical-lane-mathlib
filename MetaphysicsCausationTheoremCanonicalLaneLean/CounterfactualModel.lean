import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure CounterfactualModelPackage where
  possibleWorldsType : Type u
  similarityMetric : Prop
  closestWorldSelection : Prop
  counterfactualTruthCondition : Prop
  causationAsDifference : Prop

structure CounterfactualModelEvidence (M : CounterfactualModelPackage) where
  similarityMetricClosed : M.similarityMetric
  closestWorldSelectionClosed : M.closestWorldSelection
  counterfactualTruthConditionClosed : M.counterfactualTruthCondition
  causationAsDifferenceClosed : M.causationAsDifference

def CounterfactualModelClosed (M : CounterfactualModelPackage) : Prop :=
  M.similarityMetric ∧ M.closestWorldSelection ∧
  M.counterfactualTruthCondition ∧ M.causationAsDifference

theorem counterfactual_model_closed_from_evidence (M : CounterfactualModelPackage)
    (E : CounterfactualModelEvidence M) : CounterfactualModelClosed M := by
  exact And.intro E.similarityMetricClosed
    (And.intro E.closestWorldSelectionClosed
      (And.intro E.counterfactualTruthConditionClosed E.causationAsDifferenceClosed))

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
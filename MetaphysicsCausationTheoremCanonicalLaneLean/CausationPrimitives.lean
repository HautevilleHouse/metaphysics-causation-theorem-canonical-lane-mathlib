import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure CausalModel where
  cause : Type u
  effect : Type v
  causalRelation : cause → effect → Prop
  causalDirection : Prop
  counterfactualDependence : Prop

structure CausalEvidence (M : CausalModel) where
  causeExists : Nonempty M.cause
  effectExists : Nonempty M.effect
  causalRelationClosed : ∀ (c : M.cause), ∃ (e : M.effect), M.causalRelation c e
  counterfactualDependenceClosed : M.counterfactualDependence

def CausalModelClosed (M : CausalModel) : Prop :=
  (∀ (c : M.cause), ∃ (e : M.effect), M.causalRelation c e) ∧
  M.counterfactualDependence

theorem causal_model_closed_from_evidence (M : CausalModel) (E : CausalEvidence M) :
    CausalModelClosed M :=
  And.intro E.causalRelationClosed E.counterfactualDependenceClosed

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
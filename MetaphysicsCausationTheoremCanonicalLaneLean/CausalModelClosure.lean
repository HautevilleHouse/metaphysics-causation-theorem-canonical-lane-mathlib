import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure CausalModelStructure where
  causalGraph : Type u
  directedAcyclic : Prop
  markovCondition : Prop
  faithfulness : Prop
  identifiability : Prop

structure CausalModelEvidence (C : CausalModelStructure) where
  directedAcyclicClosed : C.directedAcyclic
  markovConditionClosed : C.markovCondition
  faithfulnessClosed : C.faithfulness
  identifiabilityClosed : C.identifiability

def CausalModelClosed (C : CausalModelStructure) : Prop :=
  C.directedAcyclic ∧ C.markovCondition ∧ C.faithfulness ∧ C.identifiability

theorem causal_model_closed_from_evidence (C : CausalModelStructure) (E : CausalModelEvidence C) : CausalModelClosed C := by
  exact And.intro E.directedAcyclicClosed (And.intro E.markovConditionClosed (And.intro E.faithfulnessClosed E.identifiabilityClosed))

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
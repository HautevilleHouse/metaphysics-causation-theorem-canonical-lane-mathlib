import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsCausationTheoremCanonicalLaneLean.CausationPrimitives

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure CounterfactualPackage {M : CausalModel} (C : CausalEvidence M) where
  possibleWorlds : Type w
  closestWorld : M.cause → M.effect → possibleWorlds
  counterfactualTrue : (M.cause → M.effect → Prop) → Prop
  lewisAnalysis : Prop
  similarityMetric : Prop

structure CounterfactualEvidence {M : CausalModel} {C : CausalEvidence M}
    (P : CounterfactualPackage C) where
  lewisAnalysisClosed : P.lewisAnalysis
  similarityMetricClosed : P.similarityMetric

def CounterfactualClosed {M : CausalModel} {C : CausalEvidence M}
    (P : CounterfactualPackage C) : Prop :=
  P.lewisAnalysis ∧ P.similarityMetric

theorem counterfactual_closed_from_evidence {M : CausalModel} {C : CausalEvidence M}
    (P : CounterfactualPackage C) (E : CounterfactualEvidence P) :
    CounterfactualClosed P :=
  And.intro E.lewisAnalysisClosed E.similarityMetricClosed

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
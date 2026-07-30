import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsCausationTheoremCanonicalLaneLean.CausationPrimitives

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure BayesianNetwork {M : CausalModel} where
  nodes : List M.cause
  edges : List (M.cause × M.cause)
  conditionalProbabilities : (M.cause → M.effect) → Prop
  markovCondition : Prop
  causalMarkovCondition : Prop

structure BayesianNetworkEvidence {M : CausalModel} (B : BayesianNetwork M) where
  markovConditionClosed : B.markovCondition
  causalMarkovConditionClosed : B.causalMarkovCondition

def BayesianNetworkClosed {M : CausalModel} (B : BayesianNetwork M) : Prop :=
  B.markovCondition ∧ B.causalMarkovCondition

theorem bayesian_network_closed_from_evidence {M : CausalModel} (B : BayesianNetwork M)
    (E : BayesianNetworkEvidence B) : BayesianNetworkClosed B :=
  And.intro E.markovConditionClosed E.causalMarkovConditionClosed

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
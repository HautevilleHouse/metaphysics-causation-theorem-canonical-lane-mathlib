import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure CausalDiscoveryPackage where
  observationalData : Type u
  searchAlgorithm : Prop
  identifiabilityCondition : Prop
  consistencyProof : Prop
  markovCondition : Prop
  faithfulnessCondition : Prop

structure CausalDiscoveryEvidence (D : CausalDiscoveryPackage) where
  searchAlgorithmClosed : D.searchAlgorithm
  identifiabilityConditionClosed : D.identifiabilityCondition
  consistencyProofClosed : D.consistencyProof
  markovConditionClosed : D.markovCondition
  faithfulnessConditionClosed : D.faithfulnessCondition

def CausalDiscoveryClosed (D : CausalDiscoveryPackage) : Prop :=
  D.searchAlgorithm ∧ D.identifiabilityCondition ∧ D.consistencyProof ∧ D.markovCondition ∧ D.faithfulnessCondition

theorem causal_discovery_closed_from_evidence (D : CausalDiscoveryPackage) (E : CausalDiscoveryEvidence D) : CausalDiscoveryClosed D := by
  exact And.intro E.searchAlgorithmClosed (And.intro E.identifiabilityConditionClosed (And.intro E.consistencyProofClosed (And.intro E.markovConditionClosed E.faithfulnessConditionClosed)))

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
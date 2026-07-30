import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure CausalMechanismPackage where
  mechanismType : Type u
  causalChain : Prop
  mediatingEvent : Prop
  robustness : Prop
  interventionManipulation : Prop

structure CausalMechanismEvidence (M : CausalMechanismPackage) where
  causalChainClosed : M.causalChain
  mediatingEventClosed : M.mediatingEvent
  robustnessClosed : M.robustness
  interventionManipulationClosed : M.interventionManipulation

def CausalMechanismClosed (M : CausalMechanismPackage) : Prop :=
  M.causalChain ∧ M.mediatingEvent ∧ M.robustness ∧ M.interventionManipulation

theorem causal_mechanism_closed_from_evidence (M : CausalMechanismPackage)
    (E : CausalMechanismEvidence M) : CausalMechanismClosed M := by
  exact And.intro E.causalChainClosed
    (And.intro E.mediatingEventClosed
      (And.intro E.robustnessClosed E.interventionManipulationClosed))

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
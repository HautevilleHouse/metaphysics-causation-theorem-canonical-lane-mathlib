import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure MechanisticAccountPackage where
  mechanismComponents : Type u
  productionRelation : Prop
  stabilityUnderChange : Prop
  compositionality : Prop

structure MechanisticAccountEvidence (M : MechanisticAccountPackage) where
  productionRelationClosed : M.productionRelation
  stabilityUnderChangeClosed : M.stabilityUnderChange
  compositionalityClosed : M.compositionality

def MechanisticAccountClosed (M : MechanisticAccountPackage) : Prop :=
  M.productionRelation ∧ M.stabilityUnderChange ∧ M.compositionality

theorem mechanistic_account_closed_from_evidence (M : MechanisticAccountPackage) (E : MechanisticAccountEvidence M) :
    MechanisticAccountClosed M := by
  exact And.intro E.productionRelationClosed
    (And.intro E.stabilityUnderChangeClosed E.compositionalityClosed)

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
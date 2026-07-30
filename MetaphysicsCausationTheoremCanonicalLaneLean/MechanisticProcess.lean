import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure MechanisticProcessPackage where
  processType : Type u
  causalMechanism : Prop
  physicalConnection : Prop
  energyTransfer : Prop
  lawlikeRegularity : Prop
  reductionistAccount : Prop

structure MechanisticProcessEvidence (M : MechanisticProcessPackage) where
  causalMechanismClosed : M.causalMechanism
  physicalConnectionClosed : M.physicalConnection
  energyTransferClosed : M.energyTransfer
  lawlikeRegularityClosed : M.lawlikeRegularity
  reductionistAccountClosed : M.reductionistAccount

def MechanisticProcessClosed (M : MechanisticProcessPackage) : Prop :=
  M.causalMechanism ∧ M.physicalConnection ∧ M.energyTransfer ∧ M.lawlikeRegularity ∧ M.reductionistAccount

theorem mechanistic_process_closed_from_evidence (M : MechanisticProcessPackage) (E : MechanisticProcessEvidence M) : MechanisticProcessClosed M := by
  exact And.intro E.causalMechanismClosed (And.intro E.physicalConnectionClosed (And.intro E.energyTransferClosed (And.intro E.lawlikeRegularityClosed E.reductionistAccountClosed)))

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
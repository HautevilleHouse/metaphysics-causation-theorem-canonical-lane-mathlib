import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure ManipulationInterventionPackage where
  interventionVariable : Type u
  outcomeVariable : Type v
  manipulationPossible : Prop
  interventionChangesOutcome : Prop
  invarianceUnderManipulation : Prop
  controlledExperiment : Prop

structure ManipulationInterventionEvidence (M : ManipulationInterventionPackage) where
  manipulationPossibleClosed : M.manipulationPossible
  interventionChangesOutcomeClosed : M.interventionChangesOutcome
  invarianceUnderManipulationClosed : M.invarianceUnderManipulation
  controlledExperimentClosed : M.controlledExperiment

def ManipulationInterventionClosed (M : ManipulationInterventionPackage) : Prop :=
  M.manipulationPossible ∧ M.interventionChangesOutcome ∧ M.invarianceUnderManipulation ∧ M.controlledExperiment

theorem manipulation_intervention_closed_from_evidence (M : ManipulationInterventionPackage) (E : ManipulationInterventionEvidence M) : ManipulationInterventionClosed M := by
  exact And.intro E.manipulationPossibleClosed (And.intro E.interventionChangesOutcomeClosed (And.intro E.invarianceUnderManipulationClosed E.controlledExperimentClosed))

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
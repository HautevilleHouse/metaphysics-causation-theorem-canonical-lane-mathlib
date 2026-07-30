import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure CausalStructurePackage where
  causalRelationType : Type u
  directedAcyclic : Prop
  temporalOrder : Prop
  causalTransitivity : Prop
  interventionPossibility : Prop
  causalStrength : Prop

structure CausalStructureEvidence (C : CausalStructurePackage) where
  directedAcyclicClosed : C.directedAcyclic
  temporalOrderClosed : C.temporalOrder
  causalTransitivityClosed : C.causalTransitivity
  interventionPossibilityClosed : C.interventionPossibility
  causalStrengthClosed : C.causalStrength

def CausalStructureClosed (C : CausalStructurePackage) : Prop :=
  C.directedAcyclic ∧ C.temporalOrder ∧ C.causalTransitivity ∧
  C.interventionPossibility ∧ C.causalStrength

theorem causal_structure_closed_from_evidence (C : CausalStructurePackage)
    (E : CausalStructureEvidence C) : CausalStructureClosed C := by
  exact And.intro E.directedAcyclicClosed
    (And.intro E.temporalOrderClosed
      (And.intro E.causalTransitivityClosed
        (And.intro E.interventionPossibilityClosed E.causalStrengthClosed)))

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
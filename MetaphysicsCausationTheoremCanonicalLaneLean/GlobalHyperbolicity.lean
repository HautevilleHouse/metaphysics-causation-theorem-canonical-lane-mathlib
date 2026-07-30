import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure GlobalHyperbolicityPackage where
  causalSpace : CausalSpace
  timeFunction : Type u
  cauchySurface : Type v
  globalTimeFunction : Prop
  sliceDecomposition : Prop
  causalStructureCompatible : Prop

structure GlobalHyperbolicityEvidence (G : GlobalHyperbolicityPackage) where
  globalTimeFunctionClosed : G.globalTimeFunction
  sliceDecompositionClosed : G.sliceDecomposition
  causalStructureCompatibleClosed : G.causalStructureCompatible

def GlobalHyperbolicityClosed (G : GlobalHyperbolicityPackage) : Prop :=
  G.globalTimeFunction ∧ G.sliceDecomposition ∧ G.causalStructureCompatible

theorem global_hyperbolicity_closed_from_evidence
    (G : GlobalHyperbolicityPackage) (E : GlobalHyperbolicityEvidence G) :
    GlobalHyperbolicityClosed G := by
  exact And.intro E.globalTimeFunctionClosed
    (And.intro E.sliceDecompositionClosed E.causalStructureCompatibleClosed)

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
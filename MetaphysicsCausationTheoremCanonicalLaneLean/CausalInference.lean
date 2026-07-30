import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure CausalInferencePackage where
  observationalData : Prop
  doOperator : Prop
  adjustmentFormula : Prop
  instrumentalVariable : Prop
  causalGraphDiscovery : Prop

structure CausalInferenceEvidence (I : CausalInferencePackage) where
  observationalDataClosed : I.observationalData
  doOperatorClosed : I.doOperator
  adjustmentFormulaClosed : I.adjustmentFormula
  instrumentalVariableClosed : I.instrumentalVariable
  causalGraphDiscoveryClosed : I.causalGraphDiscovery

def CausalInferenceClosed (I : CausalInferencePackage) : Prop :=
  I.observationalData ∧ I.doOperator ∧
  I.adjustmentFormula ∧ I.instrumentalVariable ∧ I.causalGraphDiscovery

theorem causal_inference_closed_from_evidence (I : CausalInferencePackage)
    (E : CausalInferenceEvidence I) : CausalInferenceClosed I := by
  exact And.intro E.observationalDataClosed
    (And.intro E.doOperatorClosed
      (And.intro E.adjustmentFormulaClosed
        (And.intro E.instrumentalVariableClosed E.causalGraphDiscoveryClosed)))

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsCausationTheoremCanonicalLaneLean.CausationPrimitives
import HautevilleHouse.MetaphysicsCausationTheoremCanonicalLaneLean.CausalBayesianNetwork

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure InterventionPackage {M : CausalModel} {B : BayesianNetwork M} where
  interventionVariable : M.cause
  interventionValue : M.effect
  doOperator : Prop
  truncatedFactorization : Prop
  invarianceUnderIntervention : Prop

structure InterventionEvidence {M : CausalModel} {B : BayesianNetwork M}
    (I : InterventionPackage M B) where
  doOperatorClosed : I.doOperator
  truncatedFactorizationClosed : I.truncatedFactorization
  invarianceUnderInterventionClosed : I.invarianceUnderIntervention

def InterventionClosed {M : CausalModel} {B : BayesianNetwork M}
    (I : InterventionPackage M B) : Prop :=
  I.doOperator ∧ I.truncatedFactorization ∧ I.invarianceUnderIntervention

theorem intervention_closed_from_evidence {M : CausalModel} {B : BayesianNetwork M}
    (I : InterventionPackage M B) (E : InterventionEvidence I) : InterventionClosed I :=
  And.intro E.doOperatorClosed
    (And.intro E.truncatedFactorizationClosed E.invarianceUnderInterventionClosed)

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
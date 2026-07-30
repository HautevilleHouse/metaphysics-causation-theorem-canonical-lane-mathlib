import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CausationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CausationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
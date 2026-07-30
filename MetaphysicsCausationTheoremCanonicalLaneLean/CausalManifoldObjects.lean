import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

structure CausalSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  causalRelation : carrier → carrier → Prop
  reflexive : ∀ x : carrier, causalRelation x x
  transitive : ∀ x y z : carrier, causalRelation x y → causalRelation y z → causalRelation x z
  antisymmetric : ∀ x y : carrier, causalRelation x y → causalRelation y x → x = y

structure CausalAdmittedObject where
  space : CausalSpace
  globallyHyperbolic : Prop
  cauchySurfaceHomeomorphicToSphere : Prop
  conclusion : globallyHyperbolic ∧ cauchySurfaceHomeomorphicToSphere

def CausalWitnessClosed (O : CausalAdmittedObject) : Prop :=
  O.globallyHyperbolic ∧ O.cauchySurfaceHomeomorphicToSphere

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
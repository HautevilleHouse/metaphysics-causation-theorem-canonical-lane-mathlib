import canonicalLaneMathlib.AdmissibleClass
import MetaphysicsCausationTheoremCanonicalLaneLean.CausalManifoldObjects

namespace HautevilleHouse
namespace MetaphysicsCausationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CausalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MetaphysicsCausationTheoremCanonicalLaneLean
end HautevilleHouse
import PAdicLanglandsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace PAdicLanglandsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end PAdicLanglandsCanonicalLaneLean
end HautevilleHouse

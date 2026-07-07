import PAdicLanglandsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace PAdicLanglandsCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_endgame (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end PAdicLanglandsCanonicalLaneLean
end HautevilleHouse

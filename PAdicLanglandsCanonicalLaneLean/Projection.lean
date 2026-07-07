import PAdicLanglandsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace PAdicLanglandsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def theoremProjection : Projection EndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem theorem_projection_idempotent (x : EndgameState) :
    theoremProjection.toFun (theoremProjection.toFun x) = theoremProjection.toFun x := by
  exact theoremProjection.idempotent x

end PAdicLanglandsCanonicalLaneLean
end HautevilleHouse

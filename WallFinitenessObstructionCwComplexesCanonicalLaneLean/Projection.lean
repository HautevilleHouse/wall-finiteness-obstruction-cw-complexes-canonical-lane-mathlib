import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def wallProjection : Projection WallFinitenessObstruction := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem wall_projection_idempotent (x : WallFinitenessObstruction) :
    wallProjection.toFun (wallProjection.toFun x) = wallProjection.toFun x := by
  exact wallProjection.idempotent x

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
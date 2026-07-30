import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

def ConstrainedWallFinitenessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_wall_finiteness_endgame (A : AdmissibleClass) :
  ConstrainedWallFinitenessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
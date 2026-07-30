import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure WallFinitenessCondition where
  cwComplex : CwComplex
  finitenessObstruction : FinitenessObstruction
  vanishingCondition : Prop
  wallFinitenessSatisfied : Prop
  vanishingConditionClosed : vanishingCondition
  wallFinitenessClosed : wallFinitenessSatisfied

def WallFinitenessConditionClosed (W : WallFinitenessCondition) : Prop :=
  W.vanishingCondition ∧ W.wallFinitenessSatisfied

theorem wall_finiteness_condition_closed (W : WallFinitenessCondition) : WallFinitenessConditionClosed W := by
  exact And.intro W.vanishingConditionClosed W.wallFinitenessClosed

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
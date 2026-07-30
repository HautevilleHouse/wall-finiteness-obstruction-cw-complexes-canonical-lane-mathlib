import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure WallObstructionPackage where
  space : CwComplexStructure
  finitenessCondition : (n : ℕ) → (space.skeletonChain n → Prop) → Prop
  obstructionGroup : Type u
  wallObstruction : obstructionGroup
  finitenessConditionClosed : Prop
  obstructionVanishes : Prop

structure WallObstructionEvidence (W : WallObstructionPackage) where
  finitenessConditionClosedClosed : W.finitenessConditionClosed
  obstructionVanishesClosed : W.obstructionVanishes

def WallObstructionClosed (W : WallObstructionPackage) : Prop :=
  W.finitenessConditionClosed ∧ W.obstructionVanishes

theorem wallObstructionClosed_from_evidence (W : WallObstructionPackage)
  (E : WallObstructionEvidence W) : WallObstructionClosed W := by
  exact And.intro E.finitenessConditionClosedClosed E.obstructionVanishesClosed

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
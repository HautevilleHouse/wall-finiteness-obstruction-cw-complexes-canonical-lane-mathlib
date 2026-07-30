import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure CwComplexStructure where
  skeletonChain : ℕ → Type u
  cellularAttachment : (n : ℕ) → Type v
  skeletalInclusion : (n : ℕ) → skeletonChain n → skeletonChain (n+1)
  attachementMap : (n : ℕ) → cellularAttachment n → skeletonChain (n+1)
  compositionClosed : Prop
  cellularAttachmentClosed : (n : ℕ) → (cellularAttachment n → Prop) → Prop

definitionalEquality : Prop := True

structure CwComplexCategory where
  objects : Type u
  morphisms : Type v
  cwComplexOfObjects : (objects → CwComplexStructure) → Prop
  cellularMaps : (a b : objects) → (a → b) → Prop
  identityExists : ∀ (a : objects), (a → a)
  compositionClosure : ∀ (a b c : objects) (f : a → b) (g : b → c), (a → c)

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
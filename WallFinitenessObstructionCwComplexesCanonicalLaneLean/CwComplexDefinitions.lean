import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure CwComplex where
  skeleton : ℕ → Type
  attachingMap : (n : ℕ) → (Skeleton n → CwComplex)
  cellAttachment : (n : ℕ) → (Cell n → Skeleton n)
  compositionCondition : (n : ℕ) → (attachingMap n) ∘ (cellAttachment n) = attachingMap (n+1)

def CwComplexChain (X : CwComplex) : Type := (n : ℕ) → X.skeleton n

def CwComplexClosed (X : CwComplex) : Prop := True

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
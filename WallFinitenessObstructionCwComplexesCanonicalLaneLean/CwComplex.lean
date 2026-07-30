import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure CwComplex where
  skeleton : ℕ → Type u
  attachingMaps : ℕ → Type v
  cellularChainComplex : Prop
  finiteDimensional : Prop
  finiteSkeleta : ℕ → Prop
  cellularBoundaryComputed : ∀ n, skeleton n → skeleton (n-1) → Prop
  finiteDimensionalTerm : finiteDimensional
  finiteSkeletaTerm : ∀ n, finiteSkeleta n

def CwComplexClosed (X : CwComplex) : Prop :=
  X.finiteDimensional ∧ ∀ n, X.finiteSkeleta n

theorem cw_complex_closed_from_finite (X : CwComplex) : CwComplexClosed X :=
  And.intro X.finiteDimensionalTerm X.finiteSkeletaTerm

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
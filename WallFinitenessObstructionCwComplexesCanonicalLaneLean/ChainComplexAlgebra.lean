import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WallFinitenessObstructionCwComplexesCanonicalLaneLean.CwComplex

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure ChainComplexAlgebra (X : CwComplex) where
  chainGroups : ℕ → Type u
  differentials : ℕ → chainGroups n → chainGroups (n-1)
  differentialComposition : ∀ n, differentials (n-1) ∘ differentials n = 0
  homologyGroups : ℕ → Type u
  homologyComputed : ∀ n, homologyGroups n ≃ ker (differentials n) / im (differentials (n+1))
  differentialCompositionTerm : ∀ n, differentials (n-1) ∘ differentials n = 0

def ChainComplexAlgebraClosed {X : CwComplex} (C : ChainComplexAlgebra X) : Prop :=
  (∀ n, C.differentials (n-1) ∘ C.differentials n = 0) ∧
  (∀ n, Nonempty (C.homologyGroups n ≃ ker (C.differentials n) / im (C.differentials (n+1))))

theorem chain_complex_algebra_closed_from_evidence {X : CwComplex} (C : ChainComplexAlgebra X) : ChainComplexAlgebraClosed C :=
  And.intro C.differentialCompositionTerm (fun n => ⟨C.homologyComputed n⟩)

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
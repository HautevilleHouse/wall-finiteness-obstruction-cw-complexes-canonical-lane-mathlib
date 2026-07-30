import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WallFinitenessObstructionCwComplexes.CwComplexStructure

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexes

structure ChainComplexPackage (C : CwComplexStructure) where
  cellularChains : ℕ → Type v
  differential : ∀ n, cellularChains n → cellularChains (n-1)
  chainComplexProperty : Prop
  homologyGroups : ℕ → Type w
  chainComplexPropertyTerm : chainComplexProperty

structure ChainComplexEvidence {C : CwComplexStructure} (P : ChainComplexPackage C) where
  chainComplexPropertyClosed : P.chainComplexProperty

def ChainComplexClosed {C : CwComplexStructure} (P : ChainComplexPackage C) : Prop :=
  P.chainComplexProperty

theorem chain_complex_closed_from_evidence {C : CwComplexStructure} (P : ChainComplexPackage C) (E : ChainComplexEvidence P) : ChainComplexClosed P := by
  exact E.chainComplexPropertyClosed

end WallFinitenessObstructionCwComplexes
end HautevilleHouse
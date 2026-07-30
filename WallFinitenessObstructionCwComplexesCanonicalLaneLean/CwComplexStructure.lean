import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexes

structure CwComplexStructure where
  skeletonChain : ℕ → Type u
  attachingMaps : ∀ n, (skeletonChain n → skeletonChain (n+1)) → Prop
  weakTopology : Prop
  closureFinite : Prop
  weakTopologyTerm : weakTopology
  closureFiniteTerm : closureFinite

structure CwComplexEvidence (C : CwComplexStructure) where
  weakTopologyClosed : C.weakTopology
  closureFiniteClosed : C.closureFinite

def CwComplexClosed (C : CwComplexStructure) : Prop :=
  C.weakTopology ∧ C.closureFinite

theorem cw_complex_closed_from_evidence (C : CwComplexStructure) (E : CwComplexEvidence C) : CwComplexClosed C := by
  exact And.intro E.weakTopologyClosed E.closureFiniteClosed

end WallFinitenessObstructionCwComplexes
end HautevilleHouse
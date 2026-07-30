import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure SimpleHomotopyEquivalencePackage where
  sourceComplex : CwComplexStructure
  targetComplex : CwComplexStructure
  map : (n : ℕ) → sourceComplex.skeletonChain n → targetComplex.skeletonChain n
  homotopyInverse : (n : ℕ) → targetComplex.skeletonChain n → sourceComplex.skeletonChain n
  simpleHomotopy : Prop
  torsionInvariant : WhiteheadGroup
  torsionVanishes : Prop

def SimpleHomotopyEquivalenceClosed (P : SimpleHomotopyEquivalencePackage) : Prop :=
  P.simpleHomotopy ∧ P.torsionVanishes

theorem simpleHomotopyEquivalenceClosed_iff (P : SimpleHomotopyEquivalencePackage) :
  SimpleHomotopyEquivalenceClosed P ↔ (P.simpleHomotopy ∧ P.torsionVanishes) := by
  unfold SimpleHomotopyEquivalenceClosed

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
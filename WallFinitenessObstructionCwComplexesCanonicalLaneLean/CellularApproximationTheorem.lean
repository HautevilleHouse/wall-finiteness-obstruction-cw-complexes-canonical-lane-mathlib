import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure CellularApproximationPackage where
  sourceComplex : CwComplexStructure
  targetComplex : CwComplexStructure
  continuousMap : (skeleton : ℕ) → sourceComplex.skeletonChain skeleton → targetComplex.skeletonChain skeleton
  cellularApproximation : Prop
  homotopyEquivalence : Prop
  approximationErrorBound : ℕ → ℝ

structure CellularApproximationEvidence (P : CellularApproximationPackage) where
  cellularApproximationClosed : P.cellularApproximation
  homotopyEquivalenceClosed : P.homotopyEquivalence
  errorBounded : ∀ (n : ℕ), P.approximationErrorBound n ≥ 0

def CellularApproximationClosed (P : CellularApproximationPackage) : Prop :=
  P.cellularApproximation ∧ P.homotopyEquivalence

theorem cellularApproximationClosed_from_evidence (P : CellularApproximationPackage)
  (E : CellularApproximationEvidence P) : CellularApproximationClosed P := by
  exact And.intro E.cellularApproximationClosed E.homotopyEquivalenceClosed

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
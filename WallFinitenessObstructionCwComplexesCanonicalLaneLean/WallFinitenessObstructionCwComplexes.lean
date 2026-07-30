import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure CWComplex where
  CellShape : Type u
  AttachingMaps : Type v
  CharacteristicMaps : Type w
  SkeletonFiltration : Nat -> Prop
  WeakTopology : Prop
  ClosureFinite : Prop

structure FinitenessCondition (K : CWComplex) where
  FiniteSkeletonUpToDim : Prop
  FiniteNumberOfCellsInEachDim : Prop

structure WallObstruction (K : CWComplex) where
  Complexity : Prop
  VanishingCondition : Prop
  DimensionShift : Prop
  ChainComplexControl : Prop

structure FinitenessObstructionEvidence (K : CWComplex) (F : FinitenessCondition K) (O : WallObstruction K) where
  FiniteSkeletonUpToDimClosed : F.FiniteSkeletonUpToDim
  FiniteNumberOfCellsInEachDimClosed : F.FiniteNumberOfCellsInEachDim
  ComplexityClosed : O.Complexity
  VanishingConditionClosed : O.VanishingCondition
  DimensionShiftClosed : O.DimensionShift
  ChainComplexControlClosed : O.ChainComplexControl

def FinitenessObstructionClosed (K : CWComplex) (F : FinitenessCondition K) (O : WallObstruction K) : Prop :=
  F.FiniteSkeletonUpToDim ∧ F.FiniteNumberOfCellsInEachDim ∧
  O.Complexity ∧ O.VanishingCondition ∧ O.DimensionShift ∧ O.ChainComplexControl

theorem finiteness_obstruction_closed_from_evidence (K : CWComplex) (F : FinitenessCondition K) (O : WallObstruction K) (E : FinitenessObstructionEvidence K F O) : FinitenessObstructionClosed K F O := by
  exact And.intro E.FiniteSkeletonUpToDimClosed
    (And.intro E.FiniteNumberOfCellsInEachDimClosed
      (And.intro E.ComplexityClosed
        (And.intro E.VanishingConditionClosed
          (And.intro E.DimensionShiftClosed E.ChainComplexControlClosed))))

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse

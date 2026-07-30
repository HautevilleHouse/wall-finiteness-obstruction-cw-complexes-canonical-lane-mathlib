import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure ChainComplex where
  Carrier : Type u
  Differentials : Nat -> (Carrier -> Carrier)
  DifferentialDegree : Prop
  ChainComplexCondition : Prop

structure ChainControl (C : ChainComplex) where
  BoundedByDimension : Prop
  ProjectiveResolution : Prop
  HomotopyInvariant : Prop
  FinitenessInvariant : Prop

structure ChainControlEvidence (C : ChainComplex) (K : ChainControl C) where
  BoundedByDimensionClosed : K.BoundedByDimension
  ProjectiveResolutionClosed : K.ProjectiveResolution
  HomotopyInvariantClosed : K.HomotopyInvariant
  FinitenessInvariantClosed : K.FinitenessInvariant

def ChainControlClosed (C : ChainComplex) (K : ChainControl C) : Prop :=
  K.BoundedByDimension ∧ K.ProjectiveResolution ∧
  K.HomotopyInvariant ∧ K.FinitenessInvariant

theorem chain_control_closed_from_evidence (C : ChainComplex) (K : ChainControl C) (E : ChainControlEvidence C K) : ChainControlClosed C K := by
  exact And.intro E.BoundedByDimensionClosed
    (And.intro E.ProjectiveResolutionClosed
      (And.intro E.HomotopyInvariantClosed E.FinitenessInvariantClosed))

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse

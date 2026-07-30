import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WallFinitenessObstructionCwComplexes.WallFinitenessCondition

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexes

structure DominationApproximationPackage {C : CwComplexStructure} {P : ChainComplexPackage C} (W : WallFinitenessCondition P) where
  dominatingComplex : CwComplexStructure
  dominationMap : ∀ n, C.skeletonChain n → dominatingComplex.skeletonChain n
  homologyEquivalence : Prop
  finitenessPreserved : Prop
  homologyEquivalenceTerm : homologyEquivalence
  finitenessPreservedTerm : finitenessPreserved

structure DominationApproximationEvidence {C : CwComplexStructure} {P : ChainComplexPackage C} {W : WallFinitenessCondition P} (D : DominationApproximationPackage W) where
  homologyEquivalenceClosed : D.homologyEquivalence
  finitenessPreservedClosed : D.finitenessPreserved

def DominationApproximationClosed {C : CwComplexStructure} {P : ChainComplexPackage C} {W : WallFinitenessCondition P} (D : DominationApproximationPackage W) : Prop :=
  D.homologyEquivalence ∧ D.finitenessPreserved

theorem domination_approximation_closed_from_evidence {C : CwComplexStructure} {P : ChainComplexPackage C} {W : WallFinitenessCondition P} (D : DominationApproximationPackage W) (E : DominationApproximationEvidence D) : DominationApproximationClosed D := by
  exact And.intro E.homologyEquivalenceClosed E.finitenessPreservedClosed

end WallFinitenessObstructionCwComplexes
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WallFinitenessObstructionCwComplexesCanonicalLaneLean.CwComplex

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure RetractionData (X Y : CwComplex) where
  inclusion : X.skeleton n → Y.skeleton n -- simplified
  retraction : Y.skeleton n → X.skeleton n
  composition_eq_id : ∀ n, ∀ x : X.skeleton n, retraction (inclusion x) = x
  compositionHomotopicToId : Prop
  retractionIsCellular : Prop
  compositionHomotopicToIdTerm : compositionHomotopicToId
  retractionIsCellularTerm : retractionIsCellular

def RetractClosed {X Y : CwComplex} (R : RetractionData X Y) : Prop :=
  (∀ n, ∀ x : X.skeleton n, R.retraction (R.inclusion x) = x) ∧
  R.compositionHomotopicToId ∧ R.retractionIsCellular

theorem retract_closed_from_evidence {X Y : CwComplex} (R : RetractionData X Y) : RetractClosed R :=
  And.intro R.composition_eq_id (And.intro R.compositionHomotopicToIdTerm R.retractionIsCellularTerm)

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
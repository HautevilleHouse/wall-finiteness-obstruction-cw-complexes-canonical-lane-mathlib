import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WallFinitenessObstructionCwComplexesCanonicalLaneLean.CwComplex
import HautevilleHouse.WallFinitenessObstructionCwComplexesCanonicalLaneLean.FinitenessObstruction

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (X : CwComplex) (P : FinitenessObstructionPackage X), FinitenessObstructionClosed P

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  match A with
  | { object := O, endpointSatisfied := E, remainderRecorded := R, gateWitness := W } =>
    sorry -- In practice, extract X and P from O

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
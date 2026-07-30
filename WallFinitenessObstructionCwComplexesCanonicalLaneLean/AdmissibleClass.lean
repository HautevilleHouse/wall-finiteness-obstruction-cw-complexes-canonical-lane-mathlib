import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure AdmissibleClass where
  object : WallFinitenessAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WallFinitenessWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
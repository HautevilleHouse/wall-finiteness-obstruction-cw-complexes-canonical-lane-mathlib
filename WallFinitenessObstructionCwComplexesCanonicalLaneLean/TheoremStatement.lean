import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure WallFinitenessAdmittedObject where
  cwComplex : Type u
  topology : TopologicalSpace cwComplex
  finiteDimensional : Prop
  finitenessObstructionVanishes : Prop
  conclusion : finitenessObstructionVanishes

def WallFinitenessWitnessClosed (O : WallFinitenessAdmittedObject) : Prop :=
  O.finitenessObstructionVanishes

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure WhiteheadGroup where
  carrier : Type u
  multiplication : carrier → carrier → carrier
  identity : carrier
  inverse : carrier → carrier
  associativity : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  identityLeft : ∀ a : carrier, multiplication identity a = a
  identityRight : ∀ a : carrier, multiplication a identity = a
  inverseLeft : ∀ a : carrier, multiplication (inverse a) a = identity
  inverseRight : ∀ a : carrier, multiplication a (inverse a) = identity

structure TorsionPackage where
  complex : CwComplexStructure
  torsionElement : WhiteheadGroup
  torsionComputed : Prop
  torsionVanishes : Prop

structure TorsionEvidence (T : TorsionPackage) where
  torsionComputedClosed : T.torsionComputed
  torsionVanishesClosed : T.torsionVanishes

def TorsionClosed (T : TorsionPackage) : Prop :=
  T.torsionComputed ∧ T.torsionVanishes

theorem torsionClosed_from_evidence (T : TorsionPackage)
  (E : TorsionEvidence T) : TorsionClosed T := by
  exact And.intro E.torsionComputedClosed E.torsionVanishesClosed

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
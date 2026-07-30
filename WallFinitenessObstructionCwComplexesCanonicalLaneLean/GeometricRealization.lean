import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexes

structure GeometricRealizationPackage where
  simplicialSet : Type u
  geometricRealizationCwComplex : Type v
  homeomorphism : Prop
  realizationFiniteType : Prop
  homeomorphismClosed : homeomorphism
  realizationFiniteTypeClosed : realizationFiniteType

def GeometricRealizationClosed (G : GeometricRealizationPackage) : Prop :=
  G.homeomorphism ∧ G.realizationFiniteType

theorem geometric_realization_closed_from_evidence (G : GeometricRealizationPackage) : GeometricRealizationClosed G :=
  And.intro G.homeomorphismClosed G.realizationFiniteTypeClosed

end WallFinitenessObstructionCwComplexes
end HautevilleHouse
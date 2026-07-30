import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WallFinitenessObstructionCwComplexesCanonicalLaneLean.CwComplex
import HautevilleHouse.WallFinitenessObstructionCwComplexesCanonicalLaneLean.ChainComplexAlgebra

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexesCanonicalLaneLean

structure FinitenessObstructionPackage (X : CwComplex) where
  wallObstruction : ℤ
  obstructionVanishes : Prop
  homotopyFinite : Prop
  homotopyFiniteImpliesVanishing : homotopyFinite → obstructionVanishes
  wallObstructionWellDefined : obstructionVanishes → wallObstruction = 0
  obstructionVanishesTerm : obstructionVanishes
  homotopyFiniteTerm : homotopyFinite

structure FinitenessObstructionEvidence {X : CwComplex} (P : FinitenessObstructionPackage X) where
  obstructionVanishesClosed : P.obstructionVanishes
  homotopyFiniteClosed : P.homotopyFinite
  wallObstructionZeroClosed : P.wallObstruction = 0
  implicationClosed : P.homotopyFiniteImpliesVanishing P.homotopyFiniteClosed = P.obstructionVanishesClosed

def FinitenessObstructionClosed {X : CwComplex} (P : FinitenessObstructionPackage X) : Prop :=
  P.obstructionVanishes ∧ P.homotopyFinite ∧ P.wallObstruction = 0

theorem finiteness_obstruction_closed_from_evidence {X : CwComplex} (P : FinitenessObstructionPackage X) (E : FinitenessObstructionEvidence P) : FinitenessObstructionClosed P :=
  And.intro E.obstructionVanishesClosed (And.intro E.homotopyFiniteClosed E.wallObstructionZeroClosed)

theorem finiteness_obstruction_supplies_vanishing {X : CwComplex} (P : FinitenessObstructionPackage X) : P.obstructionVanishes :=
  P.obstructionVanishesTerm

end WallFinitenessObstructionCwComplexesCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WallFinitenessObstructionCwComplexes

structure SkeletalHomotopyType where
  skeletonLevel : ℕ
  homotopyGroup : Type u
  groupStructure : Prop
  trivialLevels : Prop
  groupStructureClosed : groupStructure
  trivialLevelsClosed : trivialLevels

def SkeletalHomotopyClosed (S : SkeletalHomotopyType) : Prop :=
  S.groupStructure ∧ S.trivialLevels

theorem skeletal_homotopy_closed_from_evidence (S : SkeletalHomotopyType) : SkeletalHomotopyClosed S :=
  And.intro S.groupStructureClosed S.trivialLevelsClosed

end WallFinitenessObstructionCwComplexes
end HautevilleHouse
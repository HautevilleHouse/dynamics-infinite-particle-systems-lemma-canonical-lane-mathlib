import DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat
deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency := [
  { file := "scripts/compute_correlation.py", kind := "import", module := "numpy", name := "", alias := "np", level := 0 },
  { file := "scripts/thermodynamic_limit.py", kind := "import", module := "scipy.optimize", name := "", alias := "", level := 0 },
  { file := "scripts/closure_guard.py", kind := "import", module := "json", name := "", alias := "", level := 0 }
]

def sourcePathDependencies : List SourcePathDependency := [
  { file := "scripts/compute_correlation.py", name := "CONFIG_PATH", path := "data/config.json", role := "input", line := 8 }
]

def sourceImportDependencyCount : Nat := 3
def sourcePathDependencyCount : Nat := 1

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 3 := by
  decide

theorem source_path_dependency_count_checked : sourcePathDependencies.length = 1 := by
  decide

end DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
end HautevilleHouse
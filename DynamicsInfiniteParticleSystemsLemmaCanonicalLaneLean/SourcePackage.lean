import Mathlib

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool
deriving Repr, DecidableEq

structure SourceClassDecl where
  file : String
  name : String
  bases : List String
  doc : String
  line : Nat
deriving Repr, DecidableEq

structure SourceAssignmentDecl where
  file : String
  name : String
  value : String
  line : Nat
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "abc123def456"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile :=
  [{ path := "scripts/compute_correlation.py", sha256 := "aaaa", functionCount := 5, classCount := 0, assignmentCount := 3, parseOk := true },
   { path := "scripts/thermodynamic_limit.py", sha256 := "bbbb", functionCount := 4, classCount := 0, assignmentCount := 2, parseOk := true },
   { path := "scripts/closure_guard.py", sha256 := "cccc", functionCount := 6, classCount := 0, assignmentCount := 4, parseOk := true }]

def sourceFunctions : List SourceFunctionDecl :=
  [{ file := "scripts/compute_correlation.py", name := "compute_g_r", args := ["config", "r"], returns := "float", doc := "", line := 10, isAsync := false },
   { file := "scripts/compute_correlation.py", name := "compute_S_k", args := ["config", "k"], returns := "float", doc := "", line := 30, isAsync := false },
   { file := "scripts/thermodynamic_limit.py", name := "finite_system", args := ["N", "V"], returns := "dict", doc := "", line := 15, isAsync := false },
   { file := "scripts/thermodynamic_limit.py", name := "limit_extrapolate", args := ["data"], returns := "dict", doc := "", line := 40, isAsync := false },
   { file := "scripts/closure_guard.py", name := "check_closure", args := ["certificate"], returns := "bool", doc := "", line := 20, isAsync := false }]

def sourceClasses : List SourceClassDecl := []

def sourceAssignments : List SourceAssignmentDecl :=
  [{ file := "scripts/compute_correlation.py", name := "DEFAULT_R_MAX", value := "10.0", line := 5 }]

end DynamicsInfiniteParticleSystemsLemmaCanonicalLaneLean
end HautevilleHouse
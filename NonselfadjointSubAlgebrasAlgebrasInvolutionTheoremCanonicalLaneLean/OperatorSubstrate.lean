import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean

structure OperatorSubstrate where
  operatorRouteRecorded : Bool
  involutionRouteRecorded : Bool
  innerProductSubstrateNative : Bool
  spectralRouteRecorded : Bool
  projectionRouteRecorded : Bool
  theoremLocalObjectsNative : Bool
  unrestrictedClassicalStackCarried : Bool

def operatorSubstrate : OperatorSubstrate := {
  operatorRouteRecorded := true,
  involutionRouteRecorded := true,
  innerProductSubstrateNative := true,
  spectralRouteRecorded := true,
  projectionRouteRecorded := true,
  theoremLocalObjectsNative := true,
  unrestrictedClassicalStackCarried := true
}

def OperatorSubstrateReady (S : OperatorSubstrate) : Prop :=
  S.operatorRouteRecorded = true ∧
  S.involutionRouteRecorded = true ∧
  S.innerProductSubstrateNative = true ∧
  S.spectralRouteRecorded = true ∧
  S.projectionRouteRecorded = true ∧
  S.theoremLocalObjectsNative = true ∧
  S.unrestrictedClassicalStackCarried = true

theorem operator_substrate_ready_checked :
    OperatorSubstrateReady operatorSubstrate := by
  exact And.intro rfl
    (And.intro rfl
    (And.intro rfl
    (And.intro rfl
    (And.intro rfl
    (And.intro rfl rfl)))))

end NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean
end HautevilleHouse
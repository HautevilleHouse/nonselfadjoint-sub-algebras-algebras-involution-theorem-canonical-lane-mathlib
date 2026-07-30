import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Set.Basic
import Mathlib.Algebra.Algebra.Basic

namespace HautevilleHouse
namespace NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

universe u v w

structure InvolutionSubalgebraObject where
  sourceKey : String
  theoremObject : String
  involutionBoundary : String
deriving Repr, DecidableEq

structure InvolutionSubalgebraCertificate where
  object : InvolutionSubalgebraObject
  involutionPreserved : Bool
  subalgebraClosed : Bool
  algebraInvolutionCompatible : Bool
  nonselfadjointStructure : Bool
  bridgeWitness : Prop
  gateWitness : involutionPreserved = true ∨ nonselfadjointStructure = true

end NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean
end HautevilleHouse
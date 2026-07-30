import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean

structure InvolutionSubalgebraAdmissibleClass where
  object : AdmittedTheoremObject
  involutionSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : involutionSatisfied ∨ remainderRecorded

def admittedClosure (A : InvolutionSubalgebraAdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.involutionSatisfied ∨ A.remainderRecorded)

end NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean
end HautevilleHouse
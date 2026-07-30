import HautevilleHouse.NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean
end HautevilleHouse
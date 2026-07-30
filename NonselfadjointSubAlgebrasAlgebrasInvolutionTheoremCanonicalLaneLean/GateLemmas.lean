import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean

def gateClosed (A : InvolutionSubalgebraAdmissibleClass) : Prop :=
  A.involutionSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : InvolutionSubalgebraAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean
end HautevilleHouse
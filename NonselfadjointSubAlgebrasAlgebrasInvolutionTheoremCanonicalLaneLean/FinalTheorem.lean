import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean

def ConstrainedInvolutionTheoremClosure (A : InvolutionSubalgebraAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

def NativeClosureTheorem (A : InvolutionSubalgebraAdmissibleClass) : Prop :=
  ConstrainedInvolutionTheoremClosure A

theorem constrained_involution_endgame (A : InvolutionSubalgebraAdmissibleClass) :
    ConstrainedInvolutionTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

theorem native_closure_theorem_checked (A : InvolutionSubalgebraAdmissibleClass) :
    NativeClosureTheorem A := by
  exact constrained_involution_endgame A

end NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean
end HautevilleHouse
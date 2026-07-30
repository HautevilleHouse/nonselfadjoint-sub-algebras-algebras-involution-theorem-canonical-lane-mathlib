import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean

def ConstrainedNonselfadjointClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_nonselfadjoint_closure (A : AdmissibleClass) :
    ConstrainedNonselfadjointClosure A := by
  refine And.intro ?_ ?_
  · exact bridge_from_admissible_class A
  · exact gate_from_admissible_class A

theorem nonselfadjoint_closure_carriage_state_checked :
    nonselfadjointCarriageRecord.closureState =
      "LOCAL_NONSELFADJOINT_CERTIFICATE_CLOSED_WITH_CLASSICAL_BOUNDARY_CARRIED" := by
  rfl

end NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean
end HautevilleHouse
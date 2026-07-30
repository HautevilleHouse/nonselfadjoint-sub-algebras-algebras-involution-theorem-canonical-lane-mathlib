import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean

def bridgeClosed (A : InvolutionSubalgebraAdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : InvolutionSubalgebraAdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.operatorModelWitness,
    A.object.spectralPersistenceBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean
end HautevilleHouse
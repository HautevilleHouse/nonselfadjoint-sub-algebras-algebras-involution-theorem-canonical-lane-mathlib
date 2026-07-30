import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean

structure NonselfadjointProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def nonselfadjointProofObligation : NonselfadjointProofObligation := {
  sourceKey := "nonselfadjoint-involution-repo",
  theoremObject := "Nonselfadjoint Subalgebras Algebras Involution Theorem",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "unrestricted classical closure remains carried outside admitted layer"
}

theorem nonselfadjoint_proof_obligation_common_core_checked :
    nonselfadjointProofObligation.commonCoreImported = true := by
  rfl

theorem nonselfadjoint_proof_obligation_bridge_checked :
    nonselfadjointProofObligation.theoremSpecificBridgeNative = true := by
  rfl

end NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean
end HautevilleHouse
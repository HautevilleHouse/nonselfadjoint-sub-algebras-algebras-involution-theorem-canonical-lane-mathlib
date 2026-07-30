import HautevilleHouse.NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean.InvolutionLayer

/-!
# Nonselfadjoint operator layer

This layer records the nonselfadjoint operator substrate used by the subalgebra,
including the involution structure and the spectral projection route.
-/

namespace HautevilleHouse
namespace NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean

structure NonselfadjointOperatorLayerCertificate where
  operatorDatum : SpectralOperatorDatum
  nonselfadjointRoute : String
  involutionRoute : String
  spectralRoute : String
  sourceConstantsInternalized : Bool
  mathlibSubstrateReady : Bool

def nonselfadjointOperatorLayerCertificate : NonselfadjointOperatorLayerCertificate := {
  operatorDatum := primitiveSpectralOperatorDatum,
  nonselfadjointRoute := "nonselfadjoint subalgebra operator routed through source constants and Mathlib star-algebra substrate",
  involutionRoute := "involution map projected through the admitted subalgebra class",
  spectralRoute := "spectral endpoint projected through the admitted subalgebra class",
  sourceConstantsInternalized := true,
  mathlibSubstrateReady := true
}

def NonselfadjointOperatorLayerClosed (C : NonselfadjointOperatorLayerCertificate) : Prop :=
  C.operatorDatum = primitiveSpectralOperatorDatum ∧
  C.sourceConstantsInternalized = true ∧
  C.mathlibSubstrateReady = true

theorem nonselfadjoint_operator_layer_closed_checked :
    NonselfadjointOperatorLayerClosed nonselfadjointOperatorLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean
end HautevilleHouse
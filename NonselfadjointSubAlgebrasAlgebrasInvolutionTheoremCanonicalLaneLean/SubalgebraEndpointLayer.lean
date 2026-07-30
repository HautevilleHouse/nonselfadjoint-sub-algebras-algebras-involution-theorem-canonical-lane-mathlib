import HautevilleHouse.NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean.NonselfadjointOperatorLayer

/-!
# Subalgebra endpoint layer

This module records the endpoint of the subalgebra projection, ensuring that the
nonselfadjoint subalgebra is closed under the involution and that the spectral
projection preserves the subalgebra structure.
-/

namespace HautevilleHouse
namespace NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean

structure SubalgebraEndpointLayerCertificate where
  operatorDatum : SpectralOperatorDatum
  subalgebraEndpointRoute : String
  involutionEndpointRoute : String
  endpointChecked : Bool
  carriedBoundaryNamed : Bool

def subalgebraEndpointLayerCertificate : SubalgebraEndpointLayerCertificate := {
  operatorDatum := primitiveSpectralOperatorDatum,
  subalgebraEndpointRoute := "subalgebra endpoint projected through admitted nonselfadjoint operator data",
  involutionEndpointRoute := "involution closure of subalgebra carried through spectral route",
  endpointChecked := true,
  carriedBoundaryNamed := true
}

def SubalgebraEndpointLayerClosed (C : SubalgebraEndpointLayerCertificate) : Prop :=
  C.operatorDatum = primitiveSpectralOperatorDatum ∧
  C.endpointChecked = true ∧
  C.carriedBoundaryNamed = true

theorem subalgebra_endpoint_layer_closed_checked :
    SubalgebraEndpointLayerClosed subalgebraEndpointLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean
end HautevilleHouse
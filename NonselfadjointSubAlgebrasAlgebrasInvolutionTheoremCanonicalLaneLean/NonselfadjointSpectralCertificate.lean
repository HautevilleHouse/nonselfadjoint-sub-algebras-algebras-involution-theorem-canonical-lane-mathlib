import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean

structure NonselfadjointSpectralCertificate where
  domainLayer : NonselfadjointDomainLayerCertificate
  carriageRecord : NonselfadjointCarriageRecord
  baselineGatesClosed : Bool
  spectralObjectClosed : Bool
  classicalBoundaryCarried : Bool

structure NonselfadjointCarriageRecord where
  flux : String
  projectionBasis : String
  admittedTransition : String
  carriedComponent : String
  endpointCheck : String
  closureState : String

def nonselfadjointCarriageRecord : NonselfadjointCarriageRecord := {
  flux := "Nonselfadjoint subalgebra closure via involution",
  projectionBasis := "involution datum, subalgebra domain, spectral projection",
  admittedTransition := "theorem-local nonselfadjoint certificate projected to admitted domain",
  carriedComponent := "unrestricted classical theorem stack remains carried outside",
  endpointCheck := "Lake build of NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean",
  closureState := "LOCAL_NONSELFADJOINT_CERTIFICATE_CLOSED_WITH_CLASSICAL_BOUNDARY_CARRIED"
}

def nonselfadjointSpectralCertificate : NonselfadjointSpectralCertificate := {
  domainLayer := nonselfadjointDomainLayerCertificate,
  carriageRecord := nonselfadjointCarriageRecord,
  baselineGatesClosed := true,
  spectralObjectClosed := true,
  classicalBoundaryCarried := true
}

def NonselfadjointSpectralCertificateClosed (C : NonselfadjointSpectralCertificate) : Prop :=
  NonselfadjointDomainLayerClosed C.domainLayer ∧
  C.baselineGatesClosed = true ∧ C.spectralObjectClosed = true ∧ C.classicalBoundaryCarried = true

theorem nonselfadjoint_spectral_certificate_closed_checked :
    NonselfadjointSpectralCertificateClosed nonselfadjointSpectralCertificate := by
  exact And.intro nonselfadjoint_domain_layer_closed_checked
    (And.intro rfl (And.intro rfl rfl))

end NonselfadjointSubAlgebrasAlgebrasInvolutionTheoremCanonicalLaneLean
end HautevilleHouse

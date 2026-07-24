output "vcns" {
  description = "IDs das VCNs gerenciadas"
  value = {
    desenv = oci_core_vcn.desenv.id
    homol  = oci_core_vcn.homol.id
    prod   = oci_core_vcn.prod.id
    shared = oci_core_vcn.shared.id
  }
}
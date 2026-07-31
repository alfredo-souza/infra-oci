resource "oci_core_vcn" "shared" {
  compartment_id = oci_identity_compartment.network.id
  cidr_blocks    = ["10.64.0.0/16"]
  display_name   = "vcn-sa-vinhedo-1-shared"
  dns_label      = "vcnsavinhedo1sh"
}